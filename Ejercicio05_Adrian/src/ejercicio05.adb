with Numeros_Complejos; use Numeros_Complejos;
with Ada.Text_IO; use Ada.Text_IO;

procedure Ejercicio05 is
   x, y, z: Complejo;
begin
   x:=Comp(2.0,4.0);
   y:=Comp(3.0,8.0);   
   Put_Line("x = (" & Float'Image(P_Real(x)) & ", " & Float'Image(P_Imag(x)) & "i); y = (" & Float'Image(P_Real(y)) & ", " & Float'Image(P_Imag(y)) & "i)");
   z := x + y;
   Put_Line("x + y = (" & Float'Image(P_Real(z)) & ", " & Float'Image(P_Imag(z)) & "i)");
   z := x - y;
   Put_Line("x - y = (" & Float'Image(P_Real(z)) & ", " & Float'Image(P_Imag(z)) & "i)");
   z := x * y;
   Put_Line("x * y = (" & Float'Image(P_Real(z)) & ", " & Float'Image(P_Imag(z)) & "i)");
   z := x / y;
   Put_Line("x / y = (" & Float'Image(P_Real(z)) & ", " & Float'Image(P_Imag(z)) & "i)");
   z := Conj(x);
   Put_Line("Conj(x) = (" & Float'Image(P_Real(z)) & ", " & Float'Image(P_Imag(z)) & "i)"); 
   z := Conj(y);
   Put_Line("Conj(y) = (" & Float'Image(P_Real(z)) & ", " & Float'Image(P_Imag(z)) & "i)");
end Ejercicio05;
