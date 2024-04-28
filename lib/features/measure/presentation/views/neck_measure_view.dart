import '../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/neck_measure_view_body.dart';

class NeckMeasureView extends StatelessWidget {
  const NeckMeasureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).measure),
      body: const NeckMeasureViewBody(),
    );
  }
}
