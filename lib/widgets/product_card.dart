
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelmeniy_czech/blocs/cart/cart_bloc.dart';
import 'package:pelmeniy_czech/models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWishlist;

  const ProductCard({
    required this.product,

    this.widthFactor = 2.5,
    this.leftPosition = 5,
    this.isWishlist = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(
        //   context,
        //   '/product',
        //   arguments: product,
        // );
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / widthFactor,
            height: 145,
            child: Image.asset(
              product.photo,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 70,
            left: leftPosition,
            child: Container(
              width: MediaQuery.of(context).size.width / widthFactor - 10,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: leftPosition + 5,
            child: Container(
              width: MediaQuery.of(context).size.width / widthFactor - 45,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 10),
                        ),
                        Text(
                          '\u{20B4}${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                        return Expanded(
                          child: IconButton(
                            onPressed: () {
                              context
                                  .read<CartBloc>()
                                  .add(CartProductAdd(product));
                              final snackBar = SnackBar(
                                content: Text('Added to cart'),
                                duration: Duration(seconds: 1),
                                action: SnackBarAction(
                                  label: '',
                                  textColor: Colors.white,
                                  onPressed: () {},
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                backgroundColor: Colors.blue,
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
