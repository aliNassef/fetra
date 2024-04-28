import '../../../../core/utils/app_colors.dart';
import '../../../auth/sign_in/presentation/views/sign_in_view.dart';
import '../../../home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../core/utils/app_images.dart';

class LayOutView extends StatefulWidget {
  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PersistentTabView(
        context,
        controller: controller,
        screens: const [
          HomeView(),
          SignInView(),
          SignInView(),
          SignInView(),
        ],

        items: [
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(
              AppImages.home,
              colorFilter: const ColorFilter.mode(
                AppColors.primarySwatchColor,
                BlendMode.srcIn,
              ),
            ),
            inactiveIcon: SvgPicture.asset(
              AppImages.home,
              colorFilter: const ColorFilter.mode(
                AppColors.gray4,
                BlendMode.srcIn,
              ),
            ),
          ),
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(
              AppImages.cart,
              colorFilter: const ColorFilter.mode(
                AppColors.primarySwatchColor,
                BlendMode.srcIn,
              ),
            ),
            inactiveIcon: SvgPicture.asset(
              AppImages.cart,
              colorFilter: const ColorFilter.mode(
                AppColors.gray4,
                BlendMode.srcIn,
              ),
            ),
          ),
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(
              AppImages.users,
              colorFilter: const ColorFilter.mode(
                AppColors.primarySwatchColor,
                BlendMode.srcIn,
              ),
            ),
            inactiveIcon: SvgPicture.asset(
              AppImages.users,
              colorFilter: const ColorFilter.mode(
                AppColors.gray4,
                BlendMode.srcIn,
              ),
            ),
          ),
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(
              AppImages.profile,
              colorFilter: const ColorFilter.mode(
                AppColors.primarySwatchColor,
                BlendMode.srcIn,
              ),
            ),
            inactiveIcon: SvgPicture.asset(
              AppImages.profile,
              colorFilter: const ColorFilter.mode(
                AppColors.gray4,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.

        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }
}
