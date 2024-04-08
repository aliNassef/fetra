import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/core/utils/app_styles.dart';
 import 'package:fetra/features/articles/data/models/article_model/datum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0, // Remove shadow for better effect
      ),
      body: const ArticleDetailsViewBody(),
    );
  }
}

class ArticleDetailsViewBody extends StatelessWidget {
  const ArticleDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var instance = GoRouterState.of(context).extra as Datum;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      instance.img ??
                          'https://th.bing.com/th/id/R.ea411ebf6153f5f3201aa5a134949f3e?rik=TMsZisGUrPRPSA&pid=ImgRaw&r=0',
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .09,
                right: MediaQuery.of(context).size.width * .87,
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: SvgPicture.asset(
                    colorFilter: const ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                    AppImages.arrowLeft,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 31.h,
          ),
          Text(
            instance.title!,
            style: AppStyles.textStyle20SB,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Text(
              instance.desc!,
              style: AppStyles.textStyle14R,
            ),
          )
        ],
      ),
    );
  }
}
