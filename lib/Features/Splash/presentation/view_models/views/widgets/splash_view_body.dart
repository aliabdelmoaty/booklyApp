import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tharwatflutter/core/constants/app_router.dart';
import 'package:tharwatflutter/core/constants/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          Assets.imagesLogo,
          width: 100,
        ),
        const SizedBox(
          height: 10,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0.0, 6), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Reading books enhances your mind.',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
