import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  // void navigateToHome() {
  //   Future.delayed(const Duration(seconds: 2), () {
  //     Get.to(const HomeView(),
  //         transition: Transition.fade, duration: kTransitionDuration);
  //   });
  // }

 void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      (GoRouter.of(context).push(AppRouter.kHomeView),
          transition: Transition.fade, duration: kTransitionDuration);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
