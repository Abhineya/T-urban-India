import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:t_urban_india/core/constants/constant_colors.dart';
import 'package:t_urban_india/features/onboarding/presentation/widgets/common_page_view_model_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IntroductionScreen(
        showSkipButton: true,
        pages: [
          commonPageViewModelWidget(context, 'assets/images/onboard1.png'),
          commonPageViewModelWidget(context, 'assets/images/onboard2.png'),
          commonPageViewModelWidget(context, 'assets/images/onboard3.png'),
        ],
        onDone: () {
          // Navigate to the desired screen
        },
        onSkip: () {
          // Navigate to the desired screen
        },
        curve: Curves.easeInOut,
        controlsMargin: const EdgeInsets.only(bottom: 15),
        animationDuration: 700,
        next: CircleAvatar(
          backgroundColor: ConstantColors.white,
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: ConstantColors.black,
          ),
        ),
        skip: Text(
          "Skip",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: ConstantColors.deepPurple),
        ),
        done: Container(
          decoration: BoxDecoration(
            color: ConstantColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(3),
          padding: const EdgeInsets.all(5),
          child: Text(
            "Let's Go!",
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w900),
          ),
        ),
        dotsDecorator: DotsDecorator(
          activeColor: ConstantColors.white,
          size: const Size.square(8),
          activeSize: const Size(15, 8),
          color: ConstantColors.amberAccent,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
