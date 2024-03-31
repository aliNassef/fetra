import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/cache/cache_helper.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Color(0xff53B97C),
            // <-- SEE HERE
            statusBarIconBrightness: Brightness.light,
            //<-- For Android SEE HERE (dark icons)
            systemNavigationBarColor: Colors.white,
            statusBarBrightness:
                Brightness.dark, //<-- For iOS SEE HERE (dark icons)
          ),
        ),
      ),
      backgroundColor: AppColors.primarySwatchColor,
      body: CacheHelper().getData(key: ApiKey.token)
          ? const HomeView()
          : const OnBoardingViewBody(),
    );
  }
}
