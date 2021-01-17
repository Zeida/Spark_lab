package body Pkg_Vocales with SPARK_Mode is
   --Cuenta las vocales de una string pasada por parametro

   function Vocales (Str : String) return Natural is
      R: Natural := 0;
   begin
      if Str'Length = 0 then
         return R;
      end if;
      for J in Str'Range loop
         if Str(J) = 'a' or Str(J) = 'A' or
           Str(J) = 'e' or Str(J) = 'E' or
           Str(J) = 'i' or Str(J) = 'I' or
           Str(J) = 'o' or Str(J) = 'O' or
           Str(J) = 'u' or Str(J) = 'U' then
            R := R + 1;
         end if;
         --No es necesario la variante en un for
         --pragma Loop_Variant(Increases => J);
         --Pragma Loop_Invariant(J in Str'Range);
         Pragma Loop_Invariant(R in 0 .. 100);
         pragma Loop_Invariant(R <= (J-Str'First)+1);
      end loop;
      return R;
   end Vocales;

end Pkg_Vocales;
