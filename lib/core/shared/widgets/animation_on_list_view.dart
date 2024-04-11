import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimationOnListView extends StatelessWidget {
  const AnimationOnListView(
      {super.key, required this.length, this.onTap, this.child});
  final int length;
  final void Function()? onTap;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: ListView.builder(
          itemCount: length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: 30,
                verticalOffset: 300.0,
                child: FlipAnimation(
                  duration: const Duration(milliseconds: 3000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  flipAxis: FlipAxis.y,
                  child: GestureDetector(
                    onTap: onTap,
                    child: child,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
