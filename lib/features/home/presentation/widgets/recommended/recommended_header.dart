import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_silver_header_delegate.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_text_button.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended/recommended_scroll_button.dart';

class RecommendedHeader extends StatelessWidget {
  final ScrollController scrollController;
  final double height;

  const RecommendedHeader({
    super.key,
    required this.scrollController,
    this.height = 140.0,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: AppSilverHeaderDelegate(
        minExtent: height,
        maxExtent: height,
        child: Container(
          height: height,
          color: AppColors.recomendedSectionBackGround,
          padding: AppPadding.recomendedSection,
          child: Stack(
            children: [
              Padding(
                padding: AppPadding.recomendedSectionHeader,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.appLocalizations.recommended,
                      style: TextStyles.recomendedSectionHeader,
                    ),
                    const SizedBox(height: AppDimensions.defaultSpace),
                    Row(
                      children: [
                        AppTextButton(
                          onPressed: () {},
                          text: context.appLocalizations.paid,
                          textColor: AppColors.white,
                          bgColor: AppColors.lavender,
                        ),
                        const SizedBox(width: AppDimensions.defaultSpace),
                        AppTextButton(
                          onPressed: () {},
                          text: context.appLocalizations.free,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              RecommendedScrollButton(scrollController: scrollController),
            ],
          ),
        ),
      ),
    );
  }
}
