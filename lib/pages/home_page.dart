import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pelmeniy_czech/models/category_model.dart';
import 'package:pelmeniy_czech/models/product_model.dart';

import 'package:pelmeniy_czech/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  final _pageController = PageController(viewportFraction: 0.75);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF6D435A) ,
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
                return Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Transform.translate(
                    offset: const Offset(20, 0),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                         gradient: LinearGradient(
                         begin: Alignment.bottomCenter,
                           end: Alignment.center,
                           colors: [
                             Color(0xFF6D435A),
                             Color(0xFFB1EDE8),
                           ],
                         ),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    Products.products[index].name,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'TTNorms-Medium',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    Products.products[index].price,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'TTNorms-Medium',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.3,
                              left: constraints.maxWidth * 0.05,
                              right: -constraints.maxWidth * 0.36,
                              bottom: constraints.maxHeight * 0.2,
                              child: Image(
                                image: AssetImage(
                                  Products.products[index].photo,
                                ),
                                height: 80,
                              ),
                            ),
                          ],
                        ),

                      );
                    }),
                  ),
                );
              },
            ),
          ),
          Container(height: 120,

          ),
        ],
      ),
    );
  }
}
