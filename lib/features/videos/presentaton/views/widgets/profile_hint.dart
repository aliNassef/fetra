
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class ProfileHint extends StatelessWidget {
  const ProfileHint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: AdvancedAvatar(
        statusColor: const Color(0xff4ED442),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: const DecorationImage(
            image: AssetImage(AppImages.photoProfile),
          ),
        ),
      ),
      title: Text(
        'ليلى أحمد',
        style: AppStyles.textStyle16SB,
      ),
      subtitle: Text(
        'متخصص غذائي',
        style: AppStyles.textStyle10M.copyWith(
          color: const Color(0xff9D9FA0),
        ),
      ),
    );
  }
}
