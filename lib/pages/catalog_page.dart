import 'package:flutter/material.dart';
import 'package:pelmeniy_czech/models/category_model.dart';
import 'package:pelmeniy_czech/models/product_model.dart';
import 'package:pelmeniy_czech/widgets/custom_app_bar.dart';
import 'package:pelmeniy_czech/widgets/custom_nav_bar.dart';
import 'package:pelmeniy_czech/widgets/widgets.dart';
import 'package:rive/rive.dart';

class CatalogPage extends StatelessWidget {
  final Category category;

  const CatalogPage({Key? key, required this.category}) : super(key: key);

  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogPage(category: category),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> _categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
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
                CustomAppBar(
                  text: category.name,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 11),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.15,
                        ),
                        itemCount: _categoryProducts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: ProductCard(
                              widthFactor: 2.5,
                              product: _categoryProducts[index],
                            ),
                          );
                        }),
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
