import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/features/auth/sign_in/data/repo/auth_repo_impl.dart';
import 'package:fetra/features/auth/sign_up/presentation/view_model/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0), // here the desired height
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
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
      body: BlocProvider(
        create: (context) => SignUpCubit(getIt.get<AuthRepoImpl>()),
        child: const SignUpViewBody(),
      ),
    );
  }
}
