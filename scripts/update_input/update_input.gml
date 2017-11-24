/// updateTextInput()
{
  if (keyboard_check_pressed(vk_enter))
  {
    keyboard_string += chr(13);
  }
  user_input = string_replace_all(keyboard_string, "#", "\#");
}