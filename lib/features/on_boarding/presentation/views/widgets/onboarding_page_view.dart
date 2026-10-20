import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.controller});
final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:controller ,
      children: [
        PageViewItem(
          
          image: Assets.assetsImagesPageViewItem1Image,
          backgroundImage: Assets.assetsImagesPageViewItem1Background,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Text.rich(
            TextSpan(
              text: 'مرحبًا بك في',
              style: TextStyles.bold23,
              children: [  
                TextSpan(text: ' Fruit',style:TextStyles.bold23.copyWith(color: AppColors.primaryColor) ),
                TextSpan(text: 'HUB',style:TextStyles.bold23.copyWith(color: AppColors.secondaryColor) ),
              ],
            ),
          ), isVisible:true
        ),
        PageViewItem(
          isVisible:false ,
          image: Assets.assetsImagesPageViewItem2Image,
          backgroundImage: Assets.assetsImagesPageViewItem2Background,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text('ابحث وتسوق',style: TextStyles.bold23,),
        ),
      ],
    );
  }
}
