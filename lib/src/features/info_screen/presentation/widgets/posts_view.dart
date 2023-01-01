import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter_template/src/features/info_screen/domain/info_controller.dart';
import 'package:new_flutter_template/src/features/info_screen/presentation/widgets/post_card.dart';
import 'package:new_flutter_template/src/features/info_screen/presentation/widgets/shimmer.dart';
import 'package:shimmer/shimmer.dart';

class FakePostsView extends ConsumerWidget {
  const FakePostsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.read(fakePostsProvider).posts;
    final isLoaded = ref.watch(fakePostsProvider).isLoaded;
    return isLoaded
        ? Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) {
                  return PostCard(
                      title: posts[index].title!,
                      description: posts[index].body!);
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(height: 2);
                }),
                itemCount: posts!.length))
        : Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) {
                  return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: const ShimmeContainer());
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(height: 2);
                }),
                itemCount: 10));
  }
}
