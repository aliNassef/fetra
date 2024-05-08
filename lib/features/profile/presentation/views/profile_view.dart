import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/features/profile/data/repo/profile_repo_impl.dart';
import 'package:fetra/features/profile/presentation/view_model/update_image_cubit/update_image_cubit.dart';

import '../view_model/profilr_cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ProfileCubit(),
          ),
          BlocProvider(
            create: (context) => UpdateImageCubit(getIt.get<ProfileRepoImpl>()),
          ),
        ],
        child: const ProfileViewBody(),
      ),
    );
  }
}
