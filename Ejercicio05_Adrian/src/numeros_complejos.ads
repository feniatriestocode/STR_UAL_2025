package Numeros_Complejos is

   type Complejo is private;
   -- igualdad y asignación predefinidas
   function "+"(X,Y: Complejo) return Complejo;
   function "-"(X,Y: Complejo) return Complejo;
   function "*"(X,Y: Complejo) return Complejo;
   function "/"(X,Y: Complejo) return Complejo;
   function Conj(X: Complejo) return Complejo;
   function P_Real(X: Complejo) return Float;
   function P_Imag(X: Complejo) return Float;
   function Comp(Re, Im: Float) return Complejo;
private -- representación invisible
   type Complejo is
      record
         P_Real: Float;
         P_Imag: Float;
      end record;
 

end Numeros_Complejos;
