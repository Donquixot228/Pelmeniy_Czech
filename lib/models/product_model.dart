class Products {
  final String name;
  final String photo;
  final double price;
  final String category;

  const Products({
   required this.name,
   required this.photo,
   required this.price,
   required this.category,
  });


  static List<Products> products = [
    const Products(name: 'Пельмени с курицей-индейкой  ', photo: "assets/images/products/Kyritsa-indeyka.png", price: 180, category: 'Пельмени'),
    const Products(name: 'Пельмени с курицей',photo: "assets/images/products/Kyritsa.png",price:210,category: 'Пельмени'),
    const Products(name: 'Пельмени свинина-телятина',photo: "assets/images/products/Svinina-tel.png",price:210,category: 'Пельмени'),

  ];
}
