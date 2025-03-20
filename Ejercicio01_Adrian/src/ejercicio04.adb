with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ejercicio04 is
   
   type tA is array (0..23) of Float;
   type tB is array (0 .. 12, 0 .. 12, 0 .. 12) of Integer;
   type tC is array (Integer range <>) of Float;
   
   A : tA := (others => 0.0);
   B : tB := (others => (others => (others => 0)));
   C : tC(0 .. 9) := (others => 0.0);
   
      
begin
   
   Put_Line("Valores en el vector A:");
   for I in A'Range loop
      Put(Float'Image(A(I)) & " ");
   end loop;
   New_Line;
   New_Line;

   Put_Line("Valores en la matriz B:");

   for I in 0 .. 12 loop 
      for J in 0 .. 12 loop 
         for K in 0 .. 12 loop 
            Put(B(I, J, K));
            Put(" ");
         end loop;
         New_Line;
      end loop;
      New_Line;
   end loop;

   Put_Line("Valores en el vector C:");
   for I in C'Range loop
      Put(Float'Image(C(I)) & " ");
   end loop;
   New_Line;

   
   
end ejercicio04;
