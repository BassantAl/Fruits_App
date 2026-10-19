import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
  });
  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(image),
              ),
              Padding(padding: const EdgeInsets.all(16.0), child: Text('تخط')),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  kHorizintalPadding),
          child: Text(subtitle, textAlign: TextAlign.center),
        ),
        
      ],
    );
  }
}
