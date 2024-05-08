import 'dart:io';

import 'package:fetra/features/profile/presentation/view_model/update_image_cubit/update_image_cubit.dart';

import '../../../../../core/shared/functions/upload_image_to_api.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../view_model/profilr_cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is UploadImageToProfile) {
          uploadImageToApi(state.image);
          context.read<UpdateImageCubit>().updateUserImage(image: state.image);
        }
      },
      builder: (context, state) {
        return Center(
          child: InkWell(
            onTap: () {
              ImagePicker().pickImage(source: ImageSource.gallery).then(
                    (value) => context
                        .read<ProfileCubit>()
                        .uploadImageToProfile(value!),
                  );
            },
            child: CircleAvatar(
              radius: 71.r,
              backgroundColor: AppColors.primaryColor,
              child: context.read<ProfileCubit>().profilePict == null
                  ? CircleAvatar(
                      radius: 68.r,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        AppImages.userUploadImage,
                        colorFilter: const ColorFilter.mode(
                          Colors.grey,
                          BlendMode.srcIn,
                        ),
                        fit: BoxFit.cover,
                      ),
                    )
                  : CircleAvatar(
                      radius: 68.r,
                      backgroundColor: Colors.white,
                      backgroundImage: FileImage(
                        File(
                          context.read<ProfileCubit>().profilePict!.path,
                        ),
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
