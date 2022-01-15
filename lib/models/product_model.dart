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
    const Products(name: 'Пельмени с кроликом ', photo: "", price: 180, category: 'Пельмени'),
  ];
}
