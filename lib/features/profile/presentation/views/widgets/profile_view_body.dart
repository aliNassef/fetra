import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_styles.dart';
import '../profile_info_view.dart';
import '../sleeping_view.dart';
import '../walking_view.dart';
import 'profile_item.dart';
import 'profile_picture.dart';
import 'sign_out_button.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Directionality(
        textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 41.h,
              ),
              const ProfilePicture(),
              Text(
                'السيسى',
                style: AppStyles.textStyle22M,
              ),
              SizedBox(
                height: 29.h,
              ),
              ProfileItem(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const ProfileInfoView(),
                  );
                },
                title: S.of(context).profile_info,
              ),
              SizedBox(
                height: 11.h,
              ),
              ProfileItem(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const SleeepingView(),
                  );
                },
                title: S.of(context).sleep_time,
              ),
              SizedBox(
                height: 11.h,
              ),
              ProfileItem(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const WalkingView(),
                  );
                },
                title: S.of(context).walk_time,
              ),
              SizedBox(
                height: 11.h,
              ),
              ProfileItem(
                title: S.of(context).subscribtions,
              ),
              SizedBox(
                height: 11.h,
              ),
              ProfileItem(
                title: S.of(context).my_measurments,
              ),
              SizedBox(
                height: 75.h,
              ),
              const SignOutButton(),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
