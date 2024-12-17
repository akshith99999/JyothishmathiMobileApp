import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class CarouselSliderWidget extends StatelessWidget {
  final List<String> imgList = [
    'lib/assets/images/banner_1.jpg',
    'lib/assets/images/banner_2.jpg',
    'lib/assets/images/banner_3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Define a height for the CarouselSlider
      child: CarouselSlider.builder(
        slideBuilder: (index) {
          return Image.asset(
            imgList[index],
            fit: BoxFit.cover,
            width: 1000,
          );
        },
        itemCount: imgList.length,
        enableAutoSlider: true,
        unlimitedMode: true,
        autoSliderTransitionTime: Duration(seconds: 1),
        autoSliderDelay: Duration(seconds: 3),
      ),
    );
  }
}
