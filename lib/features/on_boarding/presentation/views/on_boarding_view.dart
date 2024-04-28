import '../../../../core/api/end_ponits.dart';
import '../../../../core/cache/cache_helper.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../layout/presentation/views/layout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      body: CacheHelper().getData(key: ApiKey.token) != null
          ? const LayOutView()
          : const LayOutView(),
    );
  }
}
