entity t_tempmux is
end t_tempmux;
architecture test of t_tempmux is
component temp_mux
port ( current_temp   : in  bit_vector(6 downto 0);
        desired_temp   : in  bit_vector(6 downto 0);
        display_select : in  bit;
        temp_display   : out bit_vector(6 downto 0)
    );
end component;
signal current_temp,desired_temp : bit_vector ( 6 downto 0);
signal temp_display: bit_vector (6 downto 0);
signal display_select : bit;
begin
UUT: temp_mux port map (current_temp => current_temp,
			desired_temp = > desired_temp,
			display_select => display_select,
			temp_display => temp_display;			
process
begin
current_temp <= "0000000";
desired_temp <= "1111111";
display_select <= '0';
wait for 10ns;
display_select <= '1';
wait for 10ns;
end process;
end BEHAV;



