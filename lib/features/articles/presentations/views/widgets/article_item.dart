import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Container(
        padding: EdgeInsets.all(13.r),
        margin: EdgeInsets.only(
          left: 30.w,
          right: 18.w,
          top: 20.h,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffFAFAFB),
          borderRadius: BorderRadius.circular(16),
        ),
        height: MediaQuery.of(context).size.height * .35,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.red,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  'Ali Nassef',
                  style: AppStyles.textStyle14R,
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: isArabic() ? TextDirection.ltr : TextDirection.rtl,
              children: [
                Image.asset(
                  AppImages.vegetables,
                  height: 100.h,
                  width: 100.w,
                ),
                Text(
                  'هل الاكل الصحي مفيد؟\n ولماذا؟',
                  textDirection:
                      isArabic() ? TextDirection.rtl : TextDirection.ltr,
                  style: AppStyles.textStyle18SB,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: isArabic() ? TextDirection.ltr : TextDirection.rtl,
              children: [
                SvgPicture.asset(
                  AppImages.more,
                ),
                Text(
                  'منذ 18 ساعة',
                  style: AppStyles.textStyle12R,
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              maxLines: 3,
              'هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟',
              style: AppStyles.textStyle12R.copyWith(
                color: const Color(0xff8B8C91),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
