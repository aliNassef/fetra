import 'widgets/sleeping_view_boddy.dart';
import 'package:flutter/material.dart';

class SleeepingView extends StatelessWidget {
  const SleeepingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SleepingViewBody(),
    );
  }
}
