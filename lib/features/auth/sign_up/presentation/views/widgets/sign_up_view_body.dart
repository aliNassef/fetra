import 'package:fetra/core/utils/app_router.dart';
import 'package:fetra/features/auth/sign_up/presentation/view_model/cubit/sign_up_cubit.dart';
import 'package:fetra/features/auth/sign_up/presentation/view_model/cubit/sign_up_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/shared/widgets/app_button.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../sign_in/presentation/views/widgets/custom_auth_button.dart';
import 'drop_down_gender.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: context.read<SignUpCubit>().formKeySignUp,
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
                    S.of(context).createaccount,
                    style: AppStyles.authText,
                  ),
                ),
              ],
            ),
            CustomAuthButton(
              controller: context.read<SignUpCubit>().signUpname,
              title: S.of(context).name,
            ),
            SizedBox(
              height: 6.h,
            ),
            CustomAuthButton(
              controller: context.read<SignUpCubit>().signUpEmail,
              title: S.of(context).email,
            ),
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              height: 6.h,
            ),
            CustomAuthButton(
              title: S.of(context).phone,
              controller: context.read<SignUpCubit>().signUpPhone,
            ),
            SizedBox(
              height: 6.h,
            ),
            CustomAuthButton(
              title: S.of(context).age,
              controller: context.read<SignUpCubit>().signUpAge,
            ),
            SizedBox(
              height: 6.h,
            ),
            const DropDownGender(),
            SizedBox(
              height: 6.h,
            ),
            CustomAuthButton(
              controller: context.read<SignUpCubit>().signUpPass,
              isSecure: true,
              title: S.of(context).pass,
            ),
            SizedBox(
              height: 37.h,
            ),
            BlocListener<SignUpCubit, SignUpState>(
              listener: (context, state) {
                if (state is SuccessSignUp) {
                  print('success');
                } else if (state is FailureSignUp) {
                  print('Failure');
                }
              },
              child: AppButton(
                onPressed: () {
                  context.read<SignUpCubit>().signUp();
                },
                text: Text(
                  S.of(context).createaccount,
                  style: AppStyles.onBoardingButton,
                ),
                backgroundColor: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    style: AppStyles.choiceSignOrText.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                    text: S.of(context).haveAccount,
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.go(AppRouter.logIn);
                      },
                    text: S.of(context).signNow,
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
      ),
    );
  }
}
