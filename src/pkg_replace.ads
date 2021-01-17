package PKg_Replace with SPARK_Mode is
   type T_Table is array (Positive range <>) of Integer;
   procedure Replace (Table: in out T_Table; N: Natural; C:out Natural)
     with
       Global  => null,

     Depends =>(Table => (Table, N),
                C=> (Table, N)),

     Pre  =>Table'Length in  1 .. 100
     and then
       Table'First = 1,

           Post =>C<Natural'Last
           and then
             (if N=0 then
                (for all k in Table'Range => Table(k) = 0)
              elsif N/=0 and then C>0 then
                (for some k in Table'Range =>
                   (if Table'Old(k)=N then Table(k)=0
                        else
                          Table(k)=Table'Old(k)))
             elsif N/=0 and then C=0 then
                (for all k in Table'Range => Table(k) = Table'Old(k)));


end PKg_Replace;
