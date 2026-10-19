import 'package:e_commerce_app/core/utils/app_images.dart';
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
              children: [
                TextSpan(text: 'Fruit'),
                TextSpan(text: 'HUB'),
              ],
            ),
          ), isVisible:(controller.hasClients? controller.page!.round() :0)==0
        ),
        PageViewItem(
          isVisible: (controller.hasClients? controller.page!.round():1)!=1,
          image: Assets.assetsImagesPageViewItem2Image,
          backgroundImage: Assets.assetsImagesPageViewItem2Background,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text('ابحث وتسوق'),
        ),
      ],
    );
  }
}
