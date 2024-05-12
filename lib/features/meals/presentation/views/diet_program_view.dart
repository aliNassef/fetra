import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';

class DietProgramView extends StatelessWidget {
  const DietProgramView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DietProgramViewBody();
  }
}

class DietProgramViewBody extends StatelessWidget {
  const DietProgramViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).diet_program),
      body: const Placeholder(),
    );
  }
}
