import 'package:fetra/core/shared/functions/locale.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            statusBarColor: AppColors.primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Transform.translate(
                offset: Offset(0, -MediaQuery.of(context).size.height * 0.1),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
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
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.notification,
                    ),
                    const SearchBar(
                      hint: 'البحث',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      width: MediaQuery.of(context).size.width * 3 / 4,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: SvgPicture.asset(
              AppImages.search,
            ),
          ),
          hintStyle: AppStyles.searchText,
          contentPadding: EdgeInsets.only(top: 7.h, bottom: 7.h),
          hintTextDirection: isArabic() ? TextDirection.rtl : TextDirection.rtl,
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          border: buildSearchBorder(),
          enabledBorder: buildSearchBorder(),
          focusedBorder: buildSearchBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildSearchBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
