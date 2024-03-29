import 'package:fetra/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/sign_in/presentation/views/sign_in_view.dart';
import '../../features/auth/sign_up/presentation/views/sign_up_view.dart';
import '../../features/on_boarding/presentation/views/choice_sign_view.dart';

abstract class AppRouter {
  static const choiceSignView = '/ChoiceSignView';
  static const logIn = '/LogInView';
  static const signUp = '/SignUpView';
  static const homeView = '/HomeView';
  static const forgetPassView = '/ForgetPassView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingView();
        },
      ),
      GoRoute(
        path: choiceSignView,
        builder: (BuildContext context, GoRouterState state) {
          return const ChoiceSignView();
        },
      ),
      GoRoute(
        path: signUp,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpView();
        },
      ),
      GoRoute(
        path: logIn,
        builder: (BuildContext context, GoRouterState state) {
          return const SignInView();
        },
      ),
      // GoRoute(
      //   path: forgetPassView,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const ForgetPassView();
      //   },
      // ),
    ],
  );
}
