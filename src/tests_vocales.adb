--  Add as many tests as you want to ensure that the calculator
--  behavior is correct in all cases.

with Ada.Text_IO;   use Ada.Text_IO;
with Pkg_Vocales;  use Pkg_Vocales;

procedure Tests_Vocales is

   procedure Test_1 is
      string_test   : constant String := "quiero";
   begin
      Put ("Test 1: 7 vocales.......................................");

      pragma Assert (Vocales(string_test) = 4);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      string_test   : constant String := "aeiou";
   begin
      Put ("Test 2: Solo vocales....................................");

      pragma Assert (Vocales(string_test) = 5);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      string_test   : constant String := "zzzzrm";
   begin
      Put ("Test 3: Sin vocales.....................................");

      pragma Assert (Vocales(string_test) = 0);


      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      string_test   : constant String := "";
   begin
      Put ("Test 3: String vacia....................................");

      pragma Assert (Vocales(string_test) = 0);


      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      string_test   : constant String := "AAAaei";
   begin
      Put ("Test 5: Vocales minúsculas y mayúsculas.................");

      pragma Assert (Vocales(string_test) = 6);


      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      string_test   : constant String := "AAA";
   begin
      Put ("Test 6: Vocales mayúsculas..............................");

      pragma Assert (Vocales(string_test) = 3);


      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      string_test   : constant String := "abcdefghi";
   begin
      Put ("Test 7: Vocales mayúsculas, minúsculas y consonantes....");

      pragma Assert (Vocales(string_test) = 3);


      Put_Line ("OK");
   end Test_7;

begin

   Put_Line ("********************* Tests_Vocales");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;


end Tests_Vocales;
