import 'package:flutter/material.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';

ButtonStyle Buttonblack = ButtonStyle(

  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.black;
      }
),
  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.white;
      }
  ),
overlayColor: MaterialStateProperty.resolveWith<Color?>(
(Set<MaterialState> states) {
if (states.contains(MaterialState.pressed)){
return Colors.redAccent;
}
return null; // Defer to the widget's default.
}
),
);
ButtonStyle Buttonred = ButtonStyle(

  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return 'C3073F'.toColor();
      }
  ),
  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.white;
      }
  ),
  overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)){
          return Colors.redAccent;
        }
        return null; // Defer to the widget's default.
      }
  ),
);
ButtonStyle Buttonpressred = ButtonStyle(

  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return CardColor1.withOpacity(1);
      }
  ),
  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.white;
      }
  ),
  overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)){
          return IconRed.withOpacity(1);
        }
        return null; // Defer to the widget's default.
      }
  ),
);