import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/constants/constant_colors.dart';
import 'package:new_flutter_template/src/localization/language/language_constants.dart';
import 'package:new_flutter_template/src/navigation/navigation.dart';

class InfoTopNavBar extends StatelessWidget {
  const InfoTopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: (() {
            AppNavigation.navigateBack(context);
          }),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.navColor,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.book,
            color: MyColors.navColor,
          ),
        ),
      ],
    );
  }
}
