import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/localization/language/language_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(child: Text(translation(context).profile)),
    ));
  }
}
