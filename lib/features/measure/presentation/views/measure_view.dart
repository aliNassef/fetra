import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/measure_view_body.dart';

class MeasureView extends StatelessWidget {
  const MeasureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).measure),
      body: const MeasureViewBody(),
    );
  }
}
