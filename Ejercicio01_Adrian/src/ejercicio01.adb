with Ada.Text_IO; use Ada.Text_IO;

procedure ejercicio01 is
   
   type intA is range -40..160;
   type intB is range 0..120;
   type intC is mod 256;
   
   A : intA := 50;
   B : intB := 80;
   C : intC := 200;
   
   AB : Integer;
   AC : Integer;
   BC : Integer;
      
begin
   
   AB := Integer(A) + Integer(B);
   AC := Integer(A) + Integer(C);
   BC := Integer(B) + Integer(C);
   
   Put_Line("A + B = " & Integer'Image(AB));
   Put_Line("A + C = " & Integer'Image(AC));
   Put_Line("B + C = " & Integer'Image(BC));

   
   
end ejercicio01;
