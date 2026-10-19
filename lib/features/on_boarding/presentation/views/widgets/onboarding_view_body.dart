import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(child: OnboardingPageView()),
        DotsIndicator(dotsCount: 2,decorator: DotsDecorator(
          color: AppColors.primaryColor.withValues(alpha: 0.5),
          activeColor: AppColors.primaryColor
        ),),
        const SizedBox(height: 29,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  kHorizintalPadding),
          child: CustomButton(onPressed: (){}, text: 'ابدأ الان'),
          
        ),
        const SizedBox(height: 43,)
      ],
    );
  }
}
