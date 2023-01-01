import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/constants/constant_colors.dart';
import 'package:new_flutter_template/src/localization/language/language_constants.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({Key? key}) : super(key: key);

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      Category(translation(context).tab1),
      Category(translation(context).tab2),
      Category(translation(context).tab3),
      Category(translation(context).tab4)
    ];

    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width - 10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, categories),
      ),
    );
  }

  Widget buildCategory(int index, List<Category> categories) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(76, 191, 197, 245)
                            .withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(1, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: selectedIndex == index
                        ? MyColors.navColor
                        : Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      categories[index].text,
                      style: TextStyle(
                          fontSize: 14,
                          color: selectedIndex == index
                              ? Colors.white
                              : MyColors.navColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
            const SizedBox(height: 7),
          ],
        ),
      ),
    );
  }
}

class Category {
  String text;

  Category(this.text);
}
