import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/features/info_screen/presentation/widgets/posts_view.dart';
import 'package:new_flutter_template/src/features/info_screen/presentation/widgets/top_nav_bar.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            InfoTopNavBar(),
            SizedBox(height: 10),
            FakePostsView()
          ],
        ),
      ),
    );
  }
}
