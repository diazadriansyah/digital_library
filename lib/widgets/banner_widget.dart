import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {

  final List<String> imagesbanner = [
    "assets/images/banner/Banner Programming.png",
    "assets/images/banner/Banner History.png",
    "assets/images/banner/Banner Science.png",
    "assets/images/banner/Banner Olah Raga.png",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
          itemCount: imagesbanner.length,
          itemBuilder: (context, i, k) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      imagesbanner[i]
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            aspectRatio: 16/9,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
    );
  }
}