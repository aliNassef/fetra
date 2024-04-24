import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import 'fat_calc_view_body.dart';

class FatCalcView extends StatelessWidget {
  const FatCalcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).fat_calc),
      body: const FatCalcViewBody(),
    );
  }
}
