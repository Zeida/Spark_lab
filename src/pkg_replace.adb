package body Pkg_Replace with SPARK_Mode is
   -- Busca  si hay uno o más elementos iguales que el parametro pasado
   -- si los hay, va sumando a un contador las apariciones y cambia esos elementos por un 0
   --  Si el elemento pasado es 0, cambia todos los elementos del array por un 0.

   procedure Replace (Table: in out T_Table; N: in Natural; C: out Natural) is

   begin
      C:=0;
      for J in Table'First.. Table'Last loop

         --pragma Loop_Invariant(J in Table'Range);

         if N = 0 then
            Table(J) := 0;
            C:=C+1;

         elsif Table(J) = N then
            Table(J) := 0;
            C:=C+1;

         end if;
         pragma Loop_Invariant
           ((for all k in Table'First .. J=>
                 (if N/=0 and then Table'Loop_Entry(k) /= N then
                         Table(k) = Table'Loop_Entry(k) and then C>=0
                  elsif N/=0 and then Table'Loop_Entry(k) = N then
                         Table(k)=0 and C > 0
                  elsif N = 0 then
                     Table(k)=0 and then C>0 )));

         pragma Loop_Invariant
           (for all k in J+1.. Table'Last=>
              Table(k) = Table'Loop_Entry(k));

         pragma Loop_Invariant(C <= J);

      end loop;

   end Replace;

end Pkg_Replace;
