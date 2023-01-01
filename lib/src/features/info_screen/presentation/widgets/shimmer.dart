import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmeContainer extends StatelessWidget {
  const ShimmeContainer({super.key});

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
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 20,
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
