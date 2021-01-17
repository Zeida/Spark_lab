package Pkg_Vocales with SPARK_Mode is

   function Vocales (Str : String) return Natural
     with
       Global  => null,

       Depends =>(Vocales'Result=>Str),

       Pre  => Str'Length in 0 .. 100 and Str'Last < 101 and Str'First > 0,

       Post => Vocales'Result in 0 .. 100;

end Pkg_Vocales;
