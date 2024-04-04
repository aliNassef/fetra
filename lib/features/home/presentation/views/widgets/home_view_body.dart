import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../generated/l10n.dart';
import 'custom_list_of_home_view_items.dart';
import 'custom_search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Transform.translate(
                offset: Offset(0, -MediaQuery.of(context).size.height * 0.1),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppImages.homeBack,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 24.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        AppImages.notification,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomSearchBar(
                        hint: S.of(context).search,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .15,
                child: Image.asset(AppImages.offer),
              ),
            ],
          ),
        ),
        const CustomListOfHomeViewItems(),
      ],
    );
  }
}
