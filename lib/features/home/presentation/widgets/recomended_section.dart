import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_text_button.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recomended_scroll_button.dart';

class RecomendedSection extends SliverPersistentHeaderDelegate {
  final ScrollController scrollController;

  RecomendedSection({required this.scrollController});

  @override
  double get minExtent => 130.0;
  @override
  double get maxExtent => 130.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.lightGray,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                context.appLocalizations.recommended,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.darkGray),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  AppTextButton(
                      onPressed: () {},
                      text: context.appLocalizations.paid,
                      textColor: AppColors.white,
                      bgColor: AppColors.lavender),
                  const SizedBox(width: 10),
                  AppTextButton(onPressed: () {}, text: context.appLocalizations.free),
                ],
              ),
            ],
          ),
          RecommendedScrollButton(scrollController: scrollController)
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.arcTo(Rect.fromLTWH(0, 0, size.width, size.height * 2), 3.14, 3.14, false);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
