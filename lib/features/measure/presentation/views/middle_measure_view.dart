import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/features/measure/presentation/views/widgets/middle_measure_view_body.dart';
import 'package:fetra/generated/l10n.dart';
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
