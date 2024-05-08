import '../../../../../core/api/end_ponits.dart';
import '../../../../../core/api/service_locator.dart';
import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt.get<CacheHelper>().removeData(key: ApiKey.token);
        context.go(AppRouter.logIn);
      }, 
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 70.h,
        decoration: const BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.all(
            Radius.circular(19),
          ),
        ),
        child: Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            Text(
              S.of(context).log_out,
              style: AppStyles.textStyle18SB.copyWith(
                color: const Color(0xff212132),
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              AppImages.signOut,
              colorFilter: const ColorFilter.mode(
                Color(0xff212132),
                BlendMode.srcIn,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
