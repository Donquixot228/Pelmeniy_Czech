import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pelmeniy_czech/models/category_model.dart';
import 'package:pelmeniy_czech/models/product_model.dart';

import 'package:pelmeniy_czech/widgets/custom_app_bar.dart';
import 'package:pelmeniy_czech/widgets/custom_nav_bar.dart';
import 'package:pelmeniy_czech/widgets/hero_carousel_card.dart';
import 'package:rive/rive.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF921972),
              Color(0xFF120227),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 290),
                  child: Container(
                    width: 90,
                    height: 260,
                    child: RiveAnimation.asset(
                      'assets/animations/sa.riv',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.only(top: kToolbarHeight + 50),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      //tall image
                      aspectRatio: 1,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 0.7,
                      //ао аокам чутка видно дрпугие фото
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      //INITIAL
                      initialPage: 1,
                      autoPlay: true,

                      //AUTOPLAY
                    ),
                    items: Category.categories
                        .map(
                          (e) => HeroCarouselCard(
                            category: e,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
            CustomNavBarr(),
          ],
        ),
      ),

    );
  }
}
