import '../../../../../core/api/end_ponits.dart';
import '../../../../../core/api/service_locator.dart';
import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/shared/functions/locale.dart';
import '../../../../on_boarding/presentation/views/widgets/custom_sign_with_google_button.dart';
import 'custom_profile_item_app_bar.dart';
import 'profile_info_box.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInfoViewBody extends StatelessWidget {
  const ProfileInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.h,
              ),
              CustomProfileItemAppBar(
                title: S.of(context).profile_info,
              ),
              SizedBox(
                height: 28.h,
              ),
              ProfileInfoBox(
                subTitle: getIt.get<CacheHelper>().getData(key: ApiKey.name),
                title: S.of(context).name,
              ),
              SizedBox(
                height: 15.h,
              ),
              ProfileInfoBox(
                subTitle: getIt.get<CacheHelper>().getData(key: ApiKey.email),
                title: S.of(context).email,
              ),
              SizedBox(
                height: 15.h,
              ),
              ProfileInfoBox(
                subTitle:
                    getIt.get<CacheHelper>().getData(key: ApiKey.password),
                title: S.of(context).pass,
              ),
              SizedBox(
                height: 35.h,
              ),
              const CustomSignWithGoogleButton(
                title: 'إضافة المتصفح الرسمي جوجل',
              )
            ],
          ),
        ),
      ),
    );
  }
}