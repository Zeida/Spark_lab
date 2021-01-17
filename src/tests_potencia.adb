with Ada.Text_IO; use Ada.Text_IO;
with Pkg_Potencia;     use Pkg_Potencia;
with system.Assertions;

procedure Tests_Potencia is

   procedure Test_1 is
   begin
      Put ("Test 1: 2 ^ 2....................................");

      pragma Assert (Potencia (2, 2) = 4);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test 2: 4 ^ 3 .................................");

      pragma Assert (Potencia (4, 3) = 64);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put ("Test 3: 2 ^ 12 .................................");

      pragma Assert (Potencia (2, 12) = 4096);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
   begin
      Put ("Test 4: 5 ^ 1 ...................................");

      pragma Assert (Potencia (5, 1) = 5);

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
   begin
      Put ("Test 5: 1 ^ 5 ....................................");

      pragma Assert (Potencia (1, 5) = 1);

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
   begin
      Put ("Test 6: 0 ^ 5 ....................................");

      pragma Assert (Potencia (0, 5) = 0);

      Put_Line ("OK");
   end Test_6;

   --#############################################################################--

   -- 0 elevado a 0 da error
   procedure Test_7 is
   begin
      Put ("Test 7: 0 ^ 0...................................");

      pragma Assert (Potencia (0, 0) = 1);

      Put_Line ("Fallo");
   exception
      when system.Assertions.Assert_Failure =>
         Put_Line("OK");

   end Test_7;

   --#############################################################################--

   procedure Test_8 is
   begin
      Put ("Test 8: 1 ^ 1 .................................");

      pragma Assert (Potencia (1, 1) = 1);

      Put_Line ("OK");
   end Test_8;



begin
   Put_Line ("********************* Tests_Potencia");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;
   Test_8;
end Tests_Potencia;
