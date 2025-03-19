with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Ejercicio01 is
   Matriz : File_Type;
   MatrizT : File_Type;
   index : Integer;
   type mat is array(1..10, 1..5) of Integer;
   M : mat;

begin
   Open(Matriz, In_File, "input.txt");
   Create(MatrizT, Out_File, "output.txt");
   for I in 1 .. 5 loop
      for J in 1 .. 10 loop
         Get(Matriz, index);
         M(J,I) := index;
      end loop;
   end loop;
   
   for I in 1 .. 10 loop
      for J in 1 .. 5 loop
         --index := M(I,J);
         --Put(MatrizT, index);
         --Put(MatrizT, " ");
         Put(MatrizT, M(I, J), 2); --De esta forma no me genera tantos espacios como en la que está comentada, pero no sé el por qué.
      end loop;
      New_Line(MatrizT);
   end loop;

   
   
   Close(Matriz);
   Close(MatrizT);


end Ejercicio01;
