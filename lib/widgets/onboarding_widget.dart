import 'package:flutter/cupertino.dart';

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Digital Library',
    image: 'assets/images/icons/intro1.png',
    RichText: 'Aplikasi perpustakaan digital untuk membantu dan memudahkan membaca buku',
  ),
  OnBoarding(
    title: 'Daftarkan Diri Anda',
    image: 'assets/images/icons/intro2.png',
    RichText: 'Daftar dapat dimanapun dan kapanpun untuk membaca buku',
  ),
  OnBoarding(
    title: 'Dengan Tampilan Menarik',
    image: 'assets/images/icons/intro3.png',
    RichText: 'Desain yang baik sehingga tampilan sederhana dan mudah digunakan',
  ),
  OnBoarding(
    title: 'Gratis Dimanapun dan Kapanpun',
    image: 'assets/images/icons/intro4.png',
    RichText: 'Dapat membaca dimanapun dan kapanpun dengan gratis',
  ),
];

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeH;
  static double? blockSizeV;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeH = screenWidth! / 100;
    blockSizeV = screenHeight! / 100;
  }
}

class OnBoarding{
  final String title;
  final String image;
  final String RichText;

  OnBoarding({
    required this.title,
    required this.image,
    required this.RichText,
  });
}