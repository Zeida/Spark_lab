package body Pkg_Potencia with SPARK_Mode is

   --Calcula la potencia de X elevado a N (siendo N  y X positivos)
   --Rango de valores

   function Potencia
     (X : Natural;
      N : Natural) return Natural
   is

      R: Natural := 1;
      aux: Natural := 0;
   begin
      --Casos Particulares
      -- N=1, X=1, N=0, X=0
      -- N=0 y X=0
      -- Negativos --> no permitidos

      if X = 1 and N=1 then
         R:= 1;
      elsif N = 1 then
         R:= X;
      elsif X = 0 then
         R:= 0;
      elsif N = 0 then
         R:= 1 ;
      else
         while aux<N loop
            --PRECONDICION QUE NO HAY OVERFLOW
            R:= R * X;
            aux:= aux + 1;
            pragma Loop_Variant(Increases=>aux);
            pragma Loop_Invariant(aux in 1..N);
            pragma Loop_Invariant(R=X**N);

         end loop;
      end if;
      --SOLUCIÓN CON UN FOR
      --  for I in 1 .. N loop
      --     R:= R * X;
      --  end loop;
      return R;
   end Potencia;
end Pkg_Potencia;
