import '../../../../core/shared/widgets/app_button.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widgets/custom_or_row.dart';
import 'widgets/custom_sign_with_google_button.dart';

class ChoiceSignView extends StatelessWidget {
  const ChoiceSignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Transform.translate(
                offset: Offset(0, -MediaQuery.of(context).size.height * 0.1),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppImages.authBack,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.07,
                child: Image.asset(
                  AppImages.introAuthIcon,
                ),
              ),
            ],
          ),
          Column(
            children: [
              AppButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.logIn);
                },
                backgroundColor: AppColors.primaryColor,
                text: Text(
                  'تسجيل دخول',
                  style: AppStyles.onBoardingButton,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              AppButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.signUp);
                },
                borderColor: AppColors.primaryColor,
                backgroundColor: Colors.white,
                text: Text(
                  'إنشاء حساب',
                  style: AppStyles.onBoardingButton.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              const CustomOrRow(),
              SizedBox(
                height: 38.h,
              ),
              CustomSignWithGoogleButton(
                title: 'المتصفح الرسمي جوجل',
                margin: EdgeInsets.symmetric(horizontal: 20.w),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
