import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final String photo;
  final String price;
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
  static List<Product> products = [
    const Product(
      name: 'Пельмени с курицей-индейкой  ',
      photo: "assets/images/products/Kyritsa-indeyka.png",
      price: '\u{20B4} 120.00',
      category: 'Пельмени',
    ),
    const Product(
      name: 'Пельмени с курицей',
      photo: "assets/images/products/Kyritsa.png",
      price: '\u{20B4} 210.00',
      category: 'Пельмени',
    ),
    const Product(
      name: 'Пельмени свинина-телятина',
      photo: "assets/images/products/Svinina-tel.png",
      price: '\u{20B4} 210.00',
      category: 'Пельмени',
    ),
  ];
}
