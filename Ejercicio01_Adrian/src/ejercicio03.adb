with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure ejercicio03 is
   type tA is delta 0.01 range -30.00..70.00;
   type tB is digits 3 range -200.0..220.0;
   
   A : tA := 50.00;
   B : tB := -40.0;
   Resultado : tB;
begin
   
   Resultado := tB(Float(A) + Float(B));
   
   Put("A + B = ");
   Put(Float(Resultado), Fore => 1, Aft => 3, Exp => 0);
   New_Line;

   
end ejercicio03;
