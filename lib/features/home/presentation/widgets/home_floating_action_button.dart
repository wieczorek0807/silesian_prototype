import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class HomeFloatingActionButton extends StatelessWidget {
  final ScrollController scrollController;
  final ValueNotifier<bool> isScrollButtonVisible;

  const HomeFloatingActionButton(
      {super.key, required this.scrollController, required this.isScrollButtonVisible});

  void _scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isScrollButtonVisible,
      builder: (context, isVisible, child) {
        return Visibility(
          visible: isVisible,
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: _scrollToTop,
            backgroundColor: AppColors.mintGreen,
            child: const Icon(
              Icons.arrow_upward,
              color: AppColors.offWhite,
            ),
          ),
        );
      },
    );
  }
}
