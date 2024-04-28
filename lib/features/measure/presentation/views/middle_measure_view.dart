import '../../../../core/shared/widgets/custom_app_bar.dart';
import 'widgets/middle_measure_view_body.dart';
import '../../../../generated/l10n.dart';
import 'package:flutter/material.dart';

class MiddleMeasureView extends StatelessWidget {
  const MiddleMeasureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).measure,
      ),
      body: const MiddleMeasureViewBody(),
    );
  }
}
