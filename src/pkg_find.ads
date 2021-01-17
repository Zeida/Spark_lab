package PKg_Find with SPARK_Mode is
   type T_Table is array (Positive range <>) of Integer;

   procedure Find (Table: in T_Table; N: Natural; B: out Boolean)
     with
       Global  => null,
       Depends =>(B=> (Table, N)),

       Pre  => Table'Length in  1 .. 100,

      Post => (if B then
                      (for some k in Table'Range => Table(k) = N)
                        else
                      (for all k in Table'Range => Table(k) /= N));

end PKg_Find;
