LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

--The inputs are 2 32-bit registers, A and B, and a 3-bit opcode. The output is a 32-bit register Y.

ENTITY ALU IS
PORT( Op_code : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
A, B : IN STD_LOGIC_VECTOR( 31 DOWNTO 0 );
Y : OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 ) );
END ALU;

architecture alu_arch of ALU is 
begin
	opcode_process : process (Op_code)
		begin
			case (Op_code) is
				when "000" => Y <= A;
				when others => Y <= A; --I do not know what this should be set to.
			end case;	
		end process;
end alu_arch;