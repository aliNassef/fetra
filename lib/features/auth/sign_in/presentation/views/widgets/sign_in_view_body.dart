import 'package:fetra/core/shared/widgets/app_button.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:fetra/features/auth/sign_in/presentation/view_model/sign_in_cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../generated/l10n.dart';
import '../../view_model/sign_in_cubit/sign_in_state.dart';
import 'custom_auth_button.dart';
import 'custom_text_button_forget_pass.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Transform.translate(
                offset: Offset(0, -MediaQuery.of(context).size.height * .1),
                child: Container(
                  height: MediaQuery.of(context).size.height * .56,
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
                top: MediaQuery.of(context).size.height * .03,
                left: MediaQuery.of(context).size.height * .03,
                child: Image.asset(
                  AppImages.authIcon,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .05,
                left: MediaQuery.of(context).size.height * .005,
                child: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: SvgPicture.asset(
                    AppImages.arrowLeft,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .3,
                left: MediaQuery.of(context).size.width * 0.65,
                child: Text(
                  S.of(context).login,
                  style: AppStyles.authText,
                ),
              ),
            ],
          ),
          CustomAuthButton(
            controller: context.read<SignInCubit>().signInEmail,
            title: S.of(context).email,
          ),
          SizedBox(
            height: 6.h,
          ),
          CustomAuthButton(
            controller: context.read<SignInCubit>().signInPass,
            isSecure: true,
            title: S.of(context).pass,
          ),
          const CustomTextButtonForgetPass(),
          SizedBox(
            height: 10.h,
          ),
          BlocListener<SignInCubit, SignInState>(
            listener: (context, state) {
              if (state is SuccessLogIn) {
                // demo
                debugPrint('successsssssssss');
              } else if (state is FailureLogIn) {
                debugPrint('Failure');
              }
            },
            child: AppButton(
              backgroundColor: AppColors.primaryColor,
              text: Text(
                S.of(context).sign,
                style: AppStyles.onBoardingButton,
              ),
              onPressed: () {
                context.read<SignInCubit>().signIn();
              },
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    style: AppStyles.choiceSignOrText.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                    text: S.of(context).subButton1),
                TextSpan(
                  text: S.of(context).subButton11,
                  style: AppStyles.choiceSignOrText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
