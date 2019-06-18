library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led8a_driver is
    Generic ( MAIN_CLK: natural:=100E6;                 -- main frequency in Hz
              CLKDIV_INTERNAL: boolean:=True);         -- 
    Port ( clk_in : in  STD_LOGIC;                      -- main_clk or slow_clk (external)
           sseg : out  STD_LOGIC_VECTOR (6 downto 0);   -- active Low
           an : out  STD_LOGIC_VECTOR (2 downto 0);    -- active Low
           rx: in std_logic);
end led8a_driver;

architecture Behavioral of led8a_driver is

--
-- declaration of UART Receiver with integral 16 byte FIFO buffer
--
  component uart_rx
    Port (            serial_in : in std_logic;
                       data_out : out std_logic_vector(7 downto 0);
                    read_buffer : in std_logic;
                   reset_buffer : in std_logic;
                   en_16_x_baud : in std_logic;
            buffer_data_present : out std_logic;
                    buffer_full : out std_logic;
               buffer_half_full : out std_logic;
                            clk : in std_logic);
  end component;
--
------------------------------------------------------------------------------------


constant DONTCARE: std_logic_vector(7 downto 0):="--------";
constant F_SLOW: natural:=500; -- display freq in Hz
constant H_PERIOD: natural:=MAIN_CLK/F_SLOW/2;
signal clkdiv_counter : natural range 0 to H_PERIOD :=0;
signal slow_clk: std_logic:='0';
signal digit: std_logic_vector(7 downto 0):=x"00";
signal one_hot,address: std_logic_vector(2 downto 0):="011";
signal seg: std_logic_vector(6 downto 0);

signal baud_count      : integer range 0 to 127 :=0;
signal en_16_x_baud    : std_logic;
signal read_from_uart  : std_logic;
signal rx_data         : std_logic_vector(7 downto 0);
signal rx_data_present : std_logic;
signal rx_full         : std_logic;
signal rx_half_full    : std_logic;

signal a :  STD_LOGIC_VECTOR (7 downto 0);       -- digit AN0
signal b :  STD_LOGIC_VECTOR (7 downto 0);       -- digit AN1
signal c :  STD_LOGIC_VECTOR (7 downto 0);       -- digit AN2
signal digit_address :  STD_LOGIC_VECTOR (1 downto 0);

type state is (address_ready, data_ready, address_received, data_received, no_data_received);
signal current_state, next_state : state;

begin



state_change : process(clk_in) is
begin
    if rising_edge(clk_in) then
        current_state <= next_state;
    end if;
end process;
 
FSM : process(current_state, rx_data, rx_data_present) is
begin
	 read_from_uart <= '0';
    next_state <= current_state;
    case current_state is

		  when address_ready =>
				
				if rx_data_present = '0' then
					next_state <= no_data_received;
				else
					if rx_data = std_logic_vector(to_unsigned(12, rx_data'length)) then
						read_from_uart <= '1';
						next_state <= address_received;
					else
					
					end if;
				end if;
				
		  when data_ready =>
		  
				if rx_data_present = '0' then
					next_state <= no_data_received;
				else
					if rx_data = std_logic_vector(to_unsigned(10, rx_data'length)) then
						read_from_uart <= '1';
						next_state <= data_received;
					else
					
					end if;
				end if;

		  when address_received =>
		  
				if rx_data_present = '0' then
					next_state <= no_data_received;
				else
					digit_address <= rx_data(1 downto 0);
					read_from_uart <= '1';
					next_state <= data_ready;
				end if;
				
        when data_received =>
				
				if rx_data_present = '0' then
					next_state <= no_data_received;
				elsif digit_address = "01" then
					a <= rx_data;
					read_from_uart <= '1';
					next_state <= address_ready;
				elsif digit_address = "10" then
					b <= rx_data;
					read_from_uart <= '1';
					next_state <= address_ready;
				elsif digit_address = "11" then
					c <= rx_data;
					read_from_uart <= '1';
					next_state <= address_ready;
				else
				
				end if;
 
        when no_data_received =>
            if rx_data_present = '1' then
					if rx_data = std_logic_vector(to_unsigned(12, rx_data'length)) then
						next_state <= address_ready;
					elsif rx_data = std_logic_vector(to_unsigned(10, rx_data'length)) then
						next_state <= data_ready;
					else
					
					end if;
				else
					next_state <= no_data_received;
            end if;
 
    end case;
end process;



-- outputs
an_out: an <= one_hot;
sseg_out: sseg <= not(seg);
--

  receive: uart_rx 
  port map (            serial_in => rx,
                         data_out => rx_data,
                      read_buffer => read_from_uart,
                     reset_buffer => '0',
                     en_16_x_baud => en_16_x_baud,
              buffer_data_present => rx_data_present,
                      buffer_full => rx_full,
                 buffer_half_full => rx_half_full,
                              clk => clk_in );  

  baud_timer_9600: process(clk_in)
  begin
    if clk_in'event and clk_in='1' then
      if baud_count=38 then
           baud_count <= 0;
         en_16_x_baud <= '1';
       else
           baud_count <= baud_count + 1;
         en_16_x_baud <= '0';
      end if;
    end if;
  end process baud_timer_9600;

 addr_reg: process(slow_clk)
 begin
     if rising_edge(slow_clk) then 
         one_hot <= one_hot(1 downto 0) & one_hot(2);
     end if;    
 end process;
 address <= one_hot;

 data_mux: with address select
 digit <= a when "011",
          b when "110",
          c when "101",
          DONTCARE when others;

 sseg_dec: with digit select           --        0
 seg <= "0000110" when x"31",          --      -----
        "1011011" when x"32",          --    5|     |1
        "1001111" when x"33",          --     |  6  |
        "1100110" when x"34",          --      -----
        "1101101" when x"35",          --    4|     |2
        "1111101" when x"36",          --     |     |
        "0000111" when x"37",          --      -----
        "1111111" when x"38",          --        3
        "1101111" when x"39",
        "1110111" when x"61",
        "1111100" when x"62",
        "0111001" when x"63",
        "1011110" when x"64",
        "1111001" when x"65",
        "1110001" when x"66",
        "0111111" when x"30",
        "1000000" when others;

-- clock signals
 clkdiv_true: if CLKDIV_INTERNAL generate
   process(clk_in) begin
     if rising_edge(clk_in) then 
       if clkdiv_counter=H_PERIOD-1 then
         clkdiv_counter <= 0;
         slow_clk <= not slow_clk;
       else 
         clkdiv_counter <= clkdiv_counter+1;
       end if;
     end if;
   end process;
 end generate;

 clkdiv_false: if not CLKDIV_INTERNAL generate
   slow_clk <= clk_in;
 end generate;

end Behavioral;