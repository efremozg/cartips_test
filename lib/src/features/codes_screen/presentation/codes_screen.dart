import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/features/codes_screen/presentation/widgets/card_button.dart';
import 'package:new_flutter_template/src/features/codes_screen/presentation/widgets/card_listview.dart';
import 'package:new_flutter_template/src/features/codes_screen/presentation/widgets/categories_selection.dart';
import 'package:new_flutter_template/src/features/codes_screen/presentation/widgets/codes_top_bar.dart';
import 'package:new_flutter_template/src/localization/language/language_constants.dart';

class CodesScreen extends StatelessWidget {
  const CodesScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CodesTopBar(),
          const SizedBox(height: 20),
          CategorySelection(),
          const SizedBox(height: 20),
          CardListView()
        ],
      )),
    );
  }
}
