import 'package:fetra/features/videos/presentaton/views/widgets/chewei_video.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:video_player/video_player.dart';

import '../../view_model/get_video_details_cubit/get_video_details_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../measure/presentation/views/widgets/custom_sub_titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_styles.dart';
import 'profile_hint.dart';
import 'viddeo_details_item.dart';

class VideoDetailsViewBody extends StatelessWidget {
  const VideoDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetVideoDetailsCubit, GetVideoDetailsState>(
      builder: (context, state) {
        if (state is GetVideoDetailsSuccess) {
          return Directionality(
            textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.w, vertical: 30.h),
                    child: state.model.data!.video == ""
                        ? SizedBox(
                            height: MediaQuery.sizeOf(context).height * .2,
                            width: MediaQuery.sizeOf(context).width,
                            child: YoutubePlayer(
                              controller: YoutubePlayerController(
                                initialVideoId: YoutubePlayer.convertUrlToId(
                                    state.model.data!.link!)!,
                                flags: const YoutubePlayerFlags(
                                  autoPlay: true,
                                  mute: false,
                                ),
                              ),
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: AppColors.primaryColor,
                              progressColors: const ProgressBarColors(
                                playedColor: AppColors.primarySwatchColor,
                                handleColor: AppColors.primarySwatchColor,
                              ),
                            ),
                          )
                        : SizedBox(
                            height: MediaQuery.sizeOf(context).height * .2,
                            width: MediaQuery.sizeOf(context).width,
                            child: ChewieVideo(
                              videoPlayerController:
                                  VideoPlayerController.networkUrl(
                                Uri.parse(state.model.data!.video!),
                              ),
                              looping: false,
                            ),
                          ),
                  ),
                  Text(
                    state.model.data!.name!,
                    style: AppStyles.textStyle20SB.copyWith(
                      color: const Color(0xff303030),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomSubTitles(),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                    state.model.data!.desc!,
                    style: AppStyles.textStyle14R.copyWith(
                      color: const Color(0xff9D9FA0),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const ProfileHint(),
                  SizedBox(
                    height: 17.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return VideoDetailsItem(
                          details: state.model.videos![index],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10.h);
                      },
                      itemCount: state.model.videos!.length,
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: SpinKitFadingCircle(
              itemBuilder: (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(color: Color(0xffC4C4C4)),
                );
              },
            ),
          );
        }
      },
    );
  }
}
