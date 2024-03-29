import 'package:fetra/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'onboarding_content.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OnBoardingContent(),
        AppButton(
          text: Text(
            'إبدأ',
            style: AppStyles.onBoardingButton.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            context.go(AppRouter.choiceSignView);
          },
        ),
        SizedBox(
          height: 40.h,
        ),
      ],
    );
  }
}
