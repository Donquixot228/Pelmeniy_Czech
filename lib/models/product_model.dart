class Products {
  final String name;
  final String photo;
  final String price;
  final String category;

  const Products({
    required this.name,
    required this.photo,
    required this.price,
    required this.category,
  });

  static List<Products> products = [
    const Products(
      name: 'Пельмени с курицей-индейкой  ',
      photo: "assets/images/products/Kyritsa-indeyka.png",
      price: '\u{20B4} 120.00',
      category: 'Пельмени',
    ),
    const Products(
      name: 'Пельмени с курицей',
      photo: "assets/images/products/Kyritsa.png",
      price: '\u{20B4} 210.00',
      category: 'Пельмени',
    ),
    const Products(
      name: 'Пельмени свинина-телятина',
      photo: "assets/images/products/Svinina-tel.png",
      price: '\u{20B4} 210.00',
      category: 'Пельмени',
    ),
  ];
}
