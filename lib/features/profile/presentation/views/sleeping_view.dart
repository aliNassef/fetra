import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/features/profile/data/repo/profile_repo_impl.dart';
import 'package:fetra/features/profile/presentation/view_model/sleeping_cubit/sleeping_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sleeping_view_body.dart';
import 'package:flutter/material.dart';

class SleeepingView extends StatelessWidget {
  const SleeepingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SleepingCubit(getIt.get<ProfileRepoImpl>()),
        child: const SleepingViewBody(),
      ),
    );
  }
}
