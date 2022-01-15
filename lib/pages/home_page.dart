import 'package:flutter/material.dart';
import 'package:pelmeniy_czech/models/category_model.dart';
import 'package:pelmeniy_czech/models/product_model.dart';

import 'package:pelmeniy_czech/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  final _pageController = PageController(viewportFraction: 0.75);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: List.generate(
                    Category.categories.length,
                    (element) => Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Text(
                            Category.categories[element].name,
                            style: const TextStyle(
                                fontFamily: 'TTNorms-Medium',
                                fontWeight: FontWeight.w800,
                                fontSize: 20),
                          ),
                        )),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              itemCount: Products.products.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.white,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
