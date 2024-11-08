import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_text_button.dart';
import 'package:silesian_prototype/core/presentation/styles/styles.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';

class RecommendedHeaderLowHeight extends StatelessWidget {
  const RecommendedHeaderLowHeight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        color: AppColors.recomendedSectionBackGround,
        // padding: AppPadding.recomendedSection,
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
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextButton(
                        onPressed: () {},
                        text: context.appLocalizations.paid,
                        textColor: AppColors.white,
                        bgColor: AppColors.lavender,
                      ),
                      const SizedBox(height: 10),
                      AppTextButton(
                        onPressed: () {},
                        text: context.appLocalizations.free,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
