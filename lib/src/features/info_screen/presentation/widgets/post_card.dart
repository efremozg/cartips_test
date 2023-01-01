import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/constants/constant_colors.dart';

class PostCard extends StatelessWidget {
  final String title, description;
  const PostCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        height: 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 241, 241),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: MyColors.navColor,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                description,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 12,
                  color: MyColors.navColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
