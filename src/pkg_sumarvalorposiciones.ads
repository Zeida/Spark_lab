package PKg_SumarValorPosiciones with SPARK_Mode is

   subtype Opcion is Natural range 0 .. 1;
   type T_Table is array (Positive range <>) of Integer;
   R:Natural;

   -- Tamaño del vector de 0 a 100
   -- Valores del vector de 0 a 10
   -- Valor máximo de la variable resultado 500

   procedure SumarValorPosiciones (Table: in T_Table; Option: in Opcion)
     with

       Global  => (Output =>(R)),
       Depends => (R=>(Table, Option)),

       Pre  => Table'Length in 1..100
         and then
           Table'First = 1
           and then
             Table'Last < 101
             and then
               (for all J in Table'Range => Table(J) in 0 .. 10),

               Post =>  (if Option = 0 then R <= (Table'Length / 2) * 10 elsif Option = 1 then R <= Table'Length * 10);

end PKg_SumarValorPosiciones;
