with Ada.Text_IO; use Ada.Text_IO;
procedure ejercicio07 is
   type Cadena is array (Positive range <>) of Character;
   type Tipo_Dia is new Integer range 1..31;
   type Tipo_Mes is new Integer range 1..12;
   type Tipo_Anio is new Integer range 1900..2050;
   
   type Fecha is
      record
         Dia : Tipo_Dia :=1; -- valor por defecto
         Mes : Tipo_Mes := 1; -- valor por defecto
         Anio: Tipo_Anio;
      end record;
   
   type Datos_personales is
      record
         Nombre : Cadena(1..6);
         Apellidos : Cadena(1..17);
         Nacimiento : Fecha;
      end record;
   
   type Nodo;
   type Enlace is access Nodo; -- puntero
   type Nodo is
      record
         Datos : Datos_personales;
         Siguiente : Enlace;
      end record;
   
   Nuevo : Enlace;
   MiDato : Datos_personales := (Nombre => "Adrian",
                                Apellidos => "Martinez Granados",
                                Nacimiento => (Dia => 26, Mes => 6, Anio => 2004));
begin
   
   Nuevo := new Nodo;
   Nuevo.Datos := MiDato;
   Nuevo.Siguiente := null;
   
   Put_Line("Nombre: " & String(Nuevo.Datos.Nombre));
   Put_Line("Apellidos: " & String(Nuevo.Datos.Apellidos));
   Put_Line("Fecha de nacimiento: "
            & Integer'Image(Integer(Nuevo.Datos.Nacimiento.Dia)) & "/"
            & Integer'Image(Integer(Nuevo.Datos.Nacimiento.Mes)) & "/"
            & Integer'Image(Integer(Nuevo.Datos.Nacimiento.Anio)));
   
end ejercicio07;
