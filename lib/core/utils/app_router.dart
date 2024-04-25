import 'package:fetra/features/articles/presentations/views/article_details_view.dart';
import 'package:fetra/features/layout/presentation/views/layout_view.dart';
import 'package:fetra/features/measure/presentation/views/measure_view.dart';
import 'package:fetra/features/measure/presentation/views/neck_measure_view.dart';
import 'package:fetra/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/sign_in/presentation/views/sign_in_view.dart';
import '../../features/auth/sign_up/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/on_boarding/presentation/views/choice_sign_view.dart';

abstract class AppRouter {
  static const choiceSignView = '/ChoiceSignView';
  static const logIn = '/LogInView';
  static const signUp = '/SignUpView';
  static const homeView = '/HomeView';
  static const layout = '/layOutView';
  static const articleDetailsView = '/ArticleDetailsView';
  static const articleView = '/ArticleView';
  static const measureView = '/MeasureView';
  static const neckMeasureView = '/NeckMeasureView';
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
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: layout,
        builder: (BuildContext context, GoRouterState state) {
          return const LayOutView();
        },
      ),
      GoRoute(
        path: articleDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const ArticleDetailsView();
        },
      ),
      GoRoute(
        path: measureView,
        builder: (BuildContext context, GoRouterState state) {
          return const MeasureView();
        },
      ),
      GoRoute(
        path: neckMeasureView,
        builder: (BuildContext context, GoRouterState state) {
          return const NeckMeasureView();
        },
      ),
    ],
  );
}
