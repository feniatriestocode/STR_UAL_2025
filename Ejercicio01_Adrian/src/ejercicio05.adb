with Ada.Text_IO; use Ada.Text_IO;

procedure ejercicio05 is
   
   type Cadena is array(Positive range<>) of Character;
   
   s : Cadena := "TIEMPO REAL";
begin
   
   Put_Line(String(s));
   
   
end ejercicio05;
