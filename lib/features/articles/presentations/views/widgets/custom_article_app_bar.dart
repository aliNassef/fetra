import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';
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
  int x = 0;
  @override
  Widget build(BuildContext context) {
    widget.controller.addListener(() {
      setState(() {});
    });
    var list = List.generate(
      widget.controller.length,
      (index) {
        return TabBarItem(
          index: index,
          title: 'ali',
          controller: widget.controller,
        );
      },
    );
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Colors.white,
          child: Directionality(
            textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
            child: TabBar(
              onTap: (value) {
                widget.controller.animateTo(
                  value,
                  duration: const Duration(
                    seconds: 10,
                  ),
                  curve: Curves.easeIn,
                );
                setState(() {});
              },
              physics: const BouncingScrollPhysics(),
              controller: widget.controller,
              labelPadding: EdgeInsets.only(
                right: 30.w,
                top: 10.h,
              ), // Adjust the padding as needed
              padding: EdgeInsets.zero,
              enableFeedback: true,
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: AppColors.tabBarLabelColor,
              dividerHeight: 0,
              unselectedLabelColor: AppColors.tabBarLabelColor,
              dividerColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: list,
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
