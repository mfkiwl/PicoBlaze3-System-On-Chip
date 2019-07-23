--
-- Definition of a single port ROM for KCPSM3 program defined by uart_kcpsm3.psm
--
-- Generated by KCPSM3 Assembler 2019-07-24T00:48:30. 
--
-- Standard IEEE libraries
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
-- The Unisim Library is used to define Xilinx primitives. It is also used during
-- simulation. The source can be viewed at %XILINX%\vhdl\src\unisims\unisim_VCOMP.vhd
--  
library unisim;
use unisim.vcomponents.all;
--
--
entity uart_kcpsm3 is
    Port (      address : in std_logic_vector(9 downto 0);
            instruction : out std_logic_vector(17 downto 0);
                    clk : in std_logic);
    end uart_kcpsm3;
--
architecture low_level_definition of uart_kcpsm3 is
--
-- Attributes to define ROM contents during implementation synthesis. 
-- The information is repeated in the generic map for functional simulation
--
attribute INIT_00 : string; 
attribute INIT_01 : string; 
attribute INIT_02 : string; 
attribute INIT_03 : string; 
attribute INIT_04 : string; 
attribute INIT_05 : string; 
attribute INIT_06 : string; 
attribute INIT_07 : string; 
attribute INIT_08 : string; 
attribute INIT_09 : string; 
attribute INIT_0A : string; 
attribute INIT_0B : string; 
attribute INIT_0C : string; 
attribute INIT_0D : string; 
attribute INIT_0E : string; 
attribute INIT_0F : string; 
attribute INIT_10 : string; 
attribute INIT_11 : string; 
attribute INIT_12 : string; 
attribute INIT_13 : string; 
attribute INIT_14 : string; 
attribute INIT_15 : string; 
attribute INIT_16 : string; 
attribute INIT_17 : string; 
attribute INIT_18 : string; 
attribute INIT_19 : string; 
attribute INIT_1A : string; 
attribute INIT_1B : string; 
attribute INIT_1C : string; 
attribute INIT_1D : string; 
attribute INIT_1E : string; 
attribute INIT_1F : string; 
attribute INIT_20 : string; 
attribute INIT_21 : string; 
attribute INIT_22 : string; 
attribute INIT_23 : string; 
attribute INIT_24 : string; 
attribute INIT_25 : string; 
attribute INIT_26 : string; 
attribute INIT_27 : string; 
attribute INIT_28 : string; 
attribute INIT_29 : string; 
attribute INIT_2A : string; 
attribute INIT_2B : string; 
attribute INIT_2C : string; 
attribute INIT_2D : string; 
attribute INIT_2E : string; 
attribute INIT_2F : string; 
attribute INIT_30 : string; 
attribute INIT_31 : string; 
attribute INIT_32 : string; 
attribute INIT_33 : string; 
attribute INIT_34 : string; 
attribute INIT_35 : string; 
attribute INIT_36 : string; 
attribute INIT_37 : string; 
attribute INIT_38 : string; 
attribute INIT_39 : string; 
attribute INIT_3A : string; 
attribute INIT_3B : string; 
attribute INIT_3C : string; 
attribute INIT_3D : string; 
attribute INIT_3E : string; 
attribute INIT_3F : string; 
attribute INITP_00 : string;
attribute INITP_01 : string;
attribute INITP_02 : string;
attribute INITP_03 : string;
attribute INITP_04 : string;
attribute INITP_05 : string;
attribute INITP_06 : string;
attribute INITP_07 : string;
--
-- Attributes to define ROM contents during implementation synthesis.
--
attribute INIT_00 of ram_1024_x_18  : label is "54142F6E54112F6C4009004C005E0058005800580EFF0052005200520D05C000";
attribute INIT_01 of ram_1024_x_18  : label is "040A15F000259E10006A046415F000250E004009003C00644009005800174009";
attribute INIT_02 of ram_1024_x_18  : label is "2F0450092F0350092F0250092F0150092F00004C005EA0009E1000259E10006A";
attribute INIT_03 of ram_1024_x_18  : label is "1D80007509641AC0A00050092F0950092F0850092F0750092F0650092F055009";
attribute INIT_04 of ram_1024_x_18  : label is "404C505020024001A00000521D80007509011A7000521D800075090A1A700052";
attribute INIT_05 of ram_1024_x_18  : label is "20104001A000CE044058505C20024020A000CD024052505620024010A000CF01";
attribute INIT_06 of ram_1024_x_18  : label is "925050703430010002000301A0004C084064546820044004A0004F02405E5462";
attribute INIT_07 of ram_1024_x_18  : label is "5477030E8801D790587E5790080607003A3003800700A000546D030601080208";
attribute INIT_08 of ram_1024_x_18  : label is "000000000000000000000000000000000000000000000000000000000000A000";
attribute INIT_09 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0A of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0B of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0C of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0D of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0E of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0F of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_10 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_11 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_12 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_13 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_14 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_15 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_16 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_17 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_18 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_19 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_1A of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_1B of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_1C of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_1D of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_1E of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_1F of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_20 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_21 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_22 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_23 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_24 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_25 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_26 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_27 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_28 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_29 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_2A of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_2B of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_2C of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_2D of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_2E of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_2F of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_30 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_31 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_32 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_33 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_34 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_35 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_36 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_37 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_38 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_39 of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3A of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3B of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3C of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3D of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3E of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3F of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INITP_00 of ram_1024_x_18 : label is "E5DA42EA7408F48F4AF4AF4AF4B30CC330B7777777777E770DC33FFFDDFFF3F3";
attribute INITP_01 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000002";
attribute INITP_02 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INITP_03 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INITP_04 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INITP_05 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INITP_06 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INITP_07 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";
--
begin
--
  --Instantiate the Xilinx primitive for a block RAM
  ram_1024_x_18: RAMB16_S18
  --synthesis translate_off
  --INIT values repeated to define contents for functional simulation
  generic map ( INIT_00 => X"54142F6E54112F6C4009004C005E0058005800580EFF0052005200520D05C000",
                INIT_01 => X"040A15F000259E10006A046415F000250E004009003C00644009005800174009",
                INIT_02 => X"2F0450092F0350092F0250092F0150092F00004C005EA0009E1000259E10006A",
                INIT_03 => X"1D80007509641AC0A00050092F0950092F0850092F0750092F0650092F055009",
                INIT_04 => X"404C505020024001A00000521D80007509011A7000521D800075090A1A700052",
                INIT_05 => X"20104001A000CE044058505C20024020A000CD024052505620024010A000CF01",
                INIT_06 => X"925050703430010002000301A0004C084064546820044004A0004F02405E5462",
                INIT_07 => X"5477030E8801D790587E5790080607003A3003800700A000546D030601080208",
                INIT_08 => X"000000000000000000000000000000000000000000000000000000000000A000",
                INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",    
               INITP_00 => X"E5DA42EA7408F48F4AF4AF4AF4B30CC330B7777777777E770DC33FFFDDFFF3F3",
               INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000002",
               INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000")
  --synthesis translate_on
  port map(    DI => "0000000000000000",
              DIP => "00",
               EN => '1',
               WE => '0',
              SSR => '0',
              CLK => clk,
             ADDR => address,
               DO => instruction(15 downto 0),
              DOP => instruction(17 downto 16)); 
--
end low_level_definition;
--
------------------------------------------------------------------------------------
--
-- END OF FILE uart_kcpsm3.vhd
--
------------------------------------------------------------------------------------

