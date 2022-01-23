import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final String photo;
  final double price;
  final String category;

  const Product({
    required this.name,
    required this.photo,
    required this.price,
    required this.category,
  });
  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      category: snap['category'],
      price: snap['price'],
      photo: '',
    );
    return product;
  }
  static const String asset = 'assets/images/products/';
  static List<Product> products = [
    const Product(
      name: 'Пельмени с курицей-индейкой ',
      photo: asset+'kyr-ind.jpg',
      price:  120.00,
      category: 'Пельмени',
    ),
    const Product(
      name: 'Пельмени с курицей',
      photo: asset+'kyr.jpg',
      price: 210.00,
      category: 'Пельмени',
    ),
    const Product(
      name: 'Пельмени свинина-телятина',
      photo: asset+'svin-tel.jpg',
      price: 210.00,
      category: 'Пельмени',
    ),
  ];
}
