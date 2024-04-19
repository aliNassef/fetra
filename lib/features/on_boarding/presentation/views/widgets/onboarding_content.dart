import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(0, -MediaQuery.of(context).size.height * .1),
            child: Container(
              height: MediaQuery.of(context).size.height * .56,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.authBack),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .1,
            left: MediaQuery.of(context).size.width * .1,
            child: Image.asset(
              AppImages.onBoarding,
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .78,
            left: MediaQuery.of(context).size.width * 0.1,
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'احصل على نظام غذائي للصيام المتقطع',
                  textStyle: AppStyles.onBoardingTitle,
                  speed: const Duration(
                    milliseconds: 150,
                  ),
                ),
              ],
              isRepeatingAnimation: true,
              repeatForever: true,
              displayFullTextOnTap: true,
              stopPauseOnTap: false,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
