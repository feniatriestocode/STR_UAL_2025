with Ada.Text_IO; use Ada.Text_IO;
with pila; use pila;
--with cola; use cola; --Descomentar y comentar la línea de arriba para que no haya conflictos ya que sus métodos he dejado que se llamen igual.
procedure Ejercicio04 is
   E : Elemento;
begin
   for I in 1..10 loop
      Poner(Elemento(I));  
   end loop;
   for I in 1..10 loop
      Quitar(E); 
      Put_Line("Elemento extraído: " & Integer'Image(Integer(E))); 
   end loop;
   
end Ejercicio04;
