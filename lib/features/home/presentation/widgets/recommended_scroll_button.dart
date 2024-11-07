import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class RecommendedScrollButton extends StatelessWidget {
  final ScrollController scrollController;
  final ValueNotifier<bool> isAtTopNotifier;

  RecommendedScrollButton({super.key, required this.scrollController})
      : isAtTopNotifier = ValueNotifier<bool>(scrollController.offset < 400) {
    scrollController.addListener(() {
      isAtTopNotifier.value = scrollController.offset < 400;
    });
  }

  void onTap() {
    if (isAtTopNotifier.value) {
      scrollController.animateTo(
        400,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -33,
      right: 0,
      child: GestureDetector(
        onTap: onTap,
        child: ValueListenableBuilder<bool>(
          valueListenable: isAtTopNotifier,
          builder: (context, isAtTop, child) {
            return Container(
              width: AppDimensions.recommendedScrollButtonSize,
              height: AppDimensions.recommendedScrollButtonSize,
              decoration: const BoxDecoration(
                color: AppColors.mintGreen,
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: const Alignment(0, 1),
                child: Icon(
                  size: AppDimensions.recommendedScrollButtonIconSize,
                  isAtTop ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                  color: AppColors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
