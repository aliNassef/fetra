import 'package:fetra/core/shared/functions/locale.dart';
import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlesViewBody extends StatelessWidget {
  const ArticlesViewBody({super.key, required this.controller});
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: TabBarView(
        controller: controller,
        children: [
          const ArticleItem(),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
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
            children: [
              Image.asset(
                AppImages.vegetables,
                height: 100.h,
                width: 100.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
