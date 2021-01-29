// Place fonts/Bookingv1.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: Bookingv1
//      fonts:
//       - asset: fonts/Bookingv1.ttf
import 'package:flutter/widgets.dart';

class MyIcons {
  MyIcons._();

  static const String _fontFamily = 'Bookingv1';

  static const IconData comments = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData dots = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData fly = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData hearth = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData location = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData menu = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData messages = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData notifications = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData saved = IconData(0xe909, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe90a, fontFamily: _fontFamily);
  static const IconData sunny = IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData user = IconData(0xe900, fontFamily: _fontFamily);
}
