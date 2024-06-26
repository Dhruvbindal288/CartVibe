import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class AnimationSlider extends StatefulWidget {
  const AnimationSlider({super.key});
  @override
  State<StatefulWidget> createState() {
    return _AnimationSlider();
  }
}

class _AnimationSlider extends State<AnimationSlider> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.26,
      width: screenWidth * 0.94,
      child: AnotherCarousel(
        images: const [
          AssetImage('assets/Sliderimage.png'),
          AssetImage('assets/Sliderimage.png'),
          AssetImage('assets/Sliderimage.png')
        ],
        borderRadius: true,
        radius: const Radius.circular(20),
        boxFit: BoxFit.contain,
        autoplay: false,
        dotBgColor: Colors.transparent,
        dotSize: 0,
      ),
    );
  }
}
