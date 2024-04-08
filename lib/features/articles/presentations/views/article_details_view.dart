import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/core/utils/app_styles.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .7,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.YamThAfETQJZRHNHwcjeCAHaE7?rs=1&pid=ImgDetMain',
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
            'هل الاكل الصحي مفيد؟ ولماذا؟',
            style: AppStyles.textStyle20SB,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Text(
              'هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟ هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟هل الاكل الصحي مفيد؟ ولماذا؟',
              style: AppStyles.textStyle14R,
            ),
          )
        ],
      ),
    );
  }
}
