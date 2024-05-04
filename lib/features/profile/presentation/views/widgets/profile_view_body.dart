import 'package:fetra/features/profile/presentation/views/widgets/profile_picture.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ProfilePicture(),
        ],
      ),
    );
  }
}
