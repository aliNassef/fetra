import 'widgets/walking_view_body.dart';
import 'package:flutter/material.dart';
 
class WalkingView extends StatelessWidget {
  const WalkingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WalkingViewBody(),
    );
  }
}
