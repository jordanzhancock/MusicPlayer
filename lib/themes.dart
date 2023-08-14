import 'package:flutter/material.dart';

// DARKMODE FLAG
bool isDarkMode = false;
// main colors
Color kBackgroundColor = isDarkMode
    ? const Color(0xff333333)
    : const Color.fromRGBO(211, 214, 217, 1);
Color kBoxShadowTopColor = isDarkMode
    ? const Color.fromRGBO(204, 204, 204, 1)
    : const Color.fromRGBO(179, 182, 184, 1);
Color kBoxShadowBottomColor =
    isDarkMode ? Colors.black : const Color.fromRGBO(243, 246, 250, 1);

Color kIconColor = Colors.grey;
// Media Control Icons
Icon kRewindIcon = const Icon(
  Icons.fast_rewind,
  color: Colors.grey,
  size: 30,
);
Icon kPlayIcon = const Icon(Icons.play_arrow, color: Colors.grey, size: 30);
Icon kFastForwardIcon =
    const Icon(Icons.fast_forward, color: Colors.grey, size: 30);
//

// holds press state if the button is pressed or not
bool isPressed = true;
Offset distance = isPressed ? const Offset(1.75, 1.75) : const Offset(7, 7);
double blur = isPressed ? 5.0 : 10.0;
