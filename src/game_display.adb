package body Game_Display is

   procedure Draw_Background (Color : Bitmap_Color) is
   begin
      Display.Hidden_Buffer(1).Set_Source(Color);
      Display.Hidden_Buffer(1).Fill;
   end Draw_Background;

   procedure Draw_Score (Score : Natural) is
      n : Integer := 12;
   begin
      for i in 1..n loop
         LCD_Std_Out.Put_Line("");
      end loop;
      LCD_Std_Out.Put(Natural'Image(Score));
   end Draw_Score;

   procedure Draw_Victory is
     s : string := "You Win!";
   begin
      LCD_Std_Out.Clear_Screen;
      LCD_Std_Out.Put_Line(s);
   end Draw_Victory;

   procedure Draw_Lose is
      s : string := "You Lose!";
   begin
      LCD_Std_Out.Clear_Screen;
      LCD_Std_Out.Put_Line(s);
   end Draw_Lose;
end Game_Display;
