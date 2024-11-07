import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_text_button.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended_scroll_button.dart';

class RecommendedHeaderSection extends StatelessWidget {
  final ScrollController scrollController;
  final double height;

  const RecommendedHeaderSection({
    super.key,
    required this.scrollController,
    this.height = 130.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: AppColors.recomendedSectionBackGround,
      padding: AppPadding.recomendedSection,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                context.appLocalizations.recommended,
                style: TextStyles.recomendedSectionHeader,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  AppTextButton(
                    onPressed: () {},
                    text: context.appLocalizations.paid,
                    textColor: AppColors.white,
                    bgColor: AppColors.lavender,
                  ),
                  const SizedBox(width: 10),
                  AppTextButton(
                    onPressed: () {},
                    text: context.appLocalizations.free,
                  ),
                ],
              ),
            ],
          ),
          RecommendedScrollButton(scrollController: scrollController),
        ],
      ),
    );
  }
}
