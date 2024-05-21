import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../main.dart';
import '../../../models/home_model.dart';
import '../../../widgets/loaders/shimmer_widget.dart';
import '../../../widgets/viewers/network_image.dart';

class PromotionBanners extends StatelessWidget {
  final List<Banner1>? banner;
  PromotionBanners({super.key, this.banner});

  final double width = MediaQuery.of(navigatorKey.currentContext!).size.width;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items:banner?.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return _bannerImage(image.image);
          },
        );
      }).toList() ?? [
        ShimmerRectangle( width: width,
          height: 240,),
      ],
      options: CarouselOptions(
        onPageChanged: (int index, CarouselPageChangedReason reason) {},
        height: 180.0,
        viewportFraction: 1,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 3),
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
      ),
    );
  }

  Widget _bannerImage(String url) {
    return NetworkImageWidget(
      url:"https://swan.alisonsnewdemo.online/images/banner/$url",
      width: width,
      height: 240,
      borderRaadius: false,
    );
  }
}
