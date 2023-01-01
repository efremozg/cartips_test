import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_flutter_template/src/features/codes_screen/presentation/widgets/card_button.dart';
import 'package:new_flutter_template/src/navigation/navigation.dart';

import '../../../../localization/language/language_constants.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          CardButton(
              onTap: (() => AppNavigation.navigateToMyCar(context)),
              color: const Color.fromARGB(255, 67, 133, 246),
              text: translation(context).card1),
          CardButton(
              onTap: (() => AppNavigation.navigateToMyCar(context)),
              color: const Color.fromARGB(255, 205, 193, 255),
              text: translation(context).card2),
          CardButton(
              onTap: (() => AppNavigation.navigateToMyCar(context)),
              color: const Color.fromARGB(255, 122, 229, 130),
              text: translation(context).card3),
          CardButton(
              onTap: (() => AppNavigation.navigateToMyCar(context)),
              color: const Color.fromARGB(255, 129, 204, 242),
              text: translation(context).card4),
          CardButton(
              onTap: (() => AppNavigation.navigateToMyCar(context)),
              color: const Color.fromARGB(255, 119, 237, 217),
              text: translation(context).card5),
        ],
      ),
    ));
  }
}
