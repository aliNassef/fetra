import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../view_model/cubit/article_cubit.dart';
import 'tab_bar_item.dart';

class CustomArticleAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  const CustomArticleAppBar({
    super.key,
    required this.controller,
  });
  final TabController controller;
  @override
  State<CustomArticleAppBar> createState() => _CustomArticleAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}

class _CustomArticleAppBarState extends State<CustomArticleAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Colors.white,
          child: Directionality(
            textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
            child: TabBar(
              controller: widget.controller,
              labelPadding: EdgeInsets.only(
                top: 10.h,
                left: 24.w,
              ),
              labelColor: AppColors.tabBarLabelColor,
              onTap: (value) {
                ArticleCubit.get(context).changeScreen(value);
                setState(() {});
              },
              dividerHeight: 0,
              unselectedLabelColor: AppColors.tabBarLabelColor,
              dividerColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: List.generate(
                3,
                (index) {
                  return TabBarItem(
                    title: 'ali',
                    index: index,
                  );
                },
              ),
            ),
          ),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: SvgPicture.asset(
            AppImages.arrowLeft,
            height: 24.h,
            width: 24.w,
          ),
        ),
      ),
      leadingWidth: 50.w,
      automaticallyImplyLeading: true,
      backgroundColor: AppColors.primaryColor[800],
      title: Text(
        S.of(context).articles,
        style: AppStyles.onBoardingTitle.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
