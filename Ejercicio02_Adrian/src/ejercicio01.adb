with Ada.Text_IO; use Ada.Text_IO;
procedure ejercicio01 is
   num : Integer := 7;
   c : String(1..num);
begin
   Put("Introduzca una cadena: ");
   Get_Line(c, num);
   
   for I in c'Range loop
      case c(I) is
      when 'Q' | 'W' => Put_Line("Opci�n 1");
      when 'E' | 'R' | 'T' => Put_Line("Opci�n 2");
      when 'Y' => Put_Line("Opci�n 3");
      when others => Put_Line("Otra opci�n");
      end case;
   end loop;
   
end ejercicio01;
