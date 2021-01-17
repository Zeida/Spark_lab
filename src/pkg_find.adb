package body Pkg_Find with SPARK_Mode is
   -- Busca  si hay uno o más elementos iguales que el parametro pasado
   -- y cambia la variable booleana en funcion de si lo encuentra o no


   procedure Find (Table: in T_Table; N: in Natural; B: out Boolean) is

   begin
      B:=False;
      for J in Table'First.. Table'Last loop
         if Table(J) = N then
            B:=True;
            exit;
         end if;
         --pragma Loop_Invariant(J in Table'Range);
         pragma Loop_Invariant(for all K in Table'First .. J => Table(K) /= N);
      end loop;
   end Find;
end Pkg_Find;
