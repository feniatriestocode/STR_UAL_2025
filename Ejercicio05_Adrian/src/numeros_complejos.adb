package body Numeros_Complejos is

   function "+"(X, Y: Complejo) return Complejo is
   begin
      return (P_Real => X.P_Real + Y.P_Real, P_Imag => X.P_Imag + Y.P_Imag);
   end "+";

   function "-"(X, Y: Complejo) return Complejo is
   begin
      return (P_Real => X.P_Real - Y.P_Real, P_Imag => X.P_Imag - Y.P_Imag);
   end "-";

   function "*"(X, Y: Complejo) return Complejo is
   begin
      return (P_Real => X.P_Real * Y.P_Real - X.P_Imag * Y.P_Imag,
              P_Imag => X.P_Real * Y.P_Imag + X.P_Imag * Y.P_Real);
   end "*";

   function "/"(X, Y: Complejo) return Complejo is
      Denom: Float := Y.P_Real**2 + Y.P_Imag**2;
   begin
      return (P_Real => (X.P_Real * Y.P_Real + X.P_Imag * Y.P_Imag) / Denom,
              P_Imag => (X.P_Imag * Y.P_Real - X.P_Real * Y.P_Imag) / Denom);
   end "/";

   function Conj(X: Complejo) return Complejo is
   begin
      return (P_Real => X.P_Real, P_Imag => -X.P_Imag);
   end Conj;

   function P_Real(X: Complejo) return Float is
   begin
      return X.P_Real;
   end P_Real;

   function P_Imag(X: Complejo) return Float is
   begin
      return X.P_Imag;
   end P_Imag;
   function Comp(Re, Im: Float) return Complejo is
   begin
      return (P_Real => Re, P_Imag => Im);
end Comp;


end Numeros_Complejos;
