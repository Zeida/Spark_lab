package Pkg_Potencia with SPARK_Mode is
   Max_X:Constant:=10;
   Max_N:Constant:=15;


   function Potencia
     (X : Natural;
      N : Natural) return Natural

     with

       Global  => null,
       Depends => (Potencia'Result => (X, N)),

       Pre     => X in 0 .. Max_X and then N in 0 .. Max_N ,

   --  Post    => True;
   --          Potencia'Result=X**N;
   --             (if X = 1 then
   --                Potencia'Result=1
   --                  elsif N = 1 then
   --                    Potencia'Result=X
   --                      elsif X = 0 then
   --                        Potencia'Result=0
   --                          elsif N = 0 then
   --                            Potencia'Result=1
   --                              else Potencia'Result = X**N);
   Contract_Cases =>
       ((X = 1) => Potencia'Result=1,
        (X/=1 and then N = 1) => Potencia'Result=X,
        (X = 0) => Potencia'Result=0,
        (N = 0) => Potencia'Result=1,
        (N>1 and then X>1) => Potencia'Result= X**N);
end Pkg_Potencia;
