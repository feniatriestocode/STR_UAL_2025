package body pila is

   type Nodo;
   type Enlace is access Nodo;
   type Nodo is
      record
         Contenido : Elemento;
         Siguiente : Enlace;
      end record;

   Primero : Enlace := null;

   function Vacia return Boolean is
   begin
      return Primero = null;
   end Vacia;   

   procedure Poner(E: Elemento) is
      Nuevo : Enlace;
   begin
      Nuevo := new Nodo; 
      Nuevo.Contenido := E;
      Nuevo.Siguiente := Primero; 
      Primero := Nuevo; 
   end Poner;

   procedure Quitar(E: out Elemento) is
      Viejo : Enlace;
   begin
      if not Vacia then
         Viejo := Primero;
         E := Viejo.Contenido; 
         Primero := Viejo.Siguiente;  
      end if;
   end Quitar;

end pila;
