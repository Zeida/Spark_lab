package body Pkg_SumarValorPosiciones with SPARK_Mode is
   -- Dado un vector, se le pasa un parametro opcion que puede adquirir los valores:
   -- 0 ( y sumara los valores de las posiciones pares acumulandolos en una variable global)
   -- 1 ( y sumara los valores de las posiciones impares acumulandolos en una variable global)

   procedure SumarValorPosiciones (Table: in T_Table; Option: in Opcion) is
      J: Natural:= Table'First;
   begin
      R:=0;

      if Option = 0 then

         while J in Table'Range loop
            if J mod 2 = 0 then
               R:= R + Table(J);
            end if;

            pragma Loop_Variant(Increases=>J);
            pragma Loop_Invariant(J in Table'Range);
            pragma Loop_Invariant(R <= (J/2) * 10 ) ;

            J:= J+1;
         end loop;

      end if;

      if Option = 1 then

         while J in Table'Range loop
            if J mod 2 /= 0 then
               R:= R + Table(J);
            end if;

            pragma Loop_Variant(Increases=>J);
            pragma Loop_Invariant(J in Table'Range);
            pragma Loop_Invariant(R <= J * 10 ) ;

            J:=J+1;
         end loop;
      end if;
   end SumarValorPosiciones;

end Pkg_SumarValorPosiciones;
