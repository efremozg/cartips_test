import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/features/info_screen/presentation/info_screen.dart';

class AppNavigation {
  static void navigateToMyCar(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => const InfoScreen())));
  }

  static void navigateBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
