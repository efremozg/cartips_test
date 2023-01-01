import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/constants/constant_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CardButton extends StatelessWidget {
  final void Function()? onTap;
  final Color color;
  final String text;
  const CardButton(
      {super.key, required this.color, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 42,
          height: 65,
          decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 14, top: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: color),
                  child: const Center(
                    child: Icon(
                      Icons.qr_code,
                      color: MyColors.navColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
