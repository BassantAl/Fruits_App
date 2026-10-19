import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  num currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
     pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
   
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageView(controller: pageController,)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: currentPage==1?AppColors.primaryColor: AppColors.primaryColor.withValues(alpha: 0.5),
            activeColor: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage==1?true:false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
