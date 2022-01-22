class Category {
  final String name;
  final String image;

  const Category({required this.name, required this.image});

  static const String asset = 'assets/images/category/';

  static List<Category> categories = [
    Category(
      name: 'Пельмени',
      image: asset + 'pelmeni1.jpg',
    ),
    Category(
      name: 'Вареники',
      image: asset + 'vishnya.jpg',
    ),
    Category(
      name: 'Равиоли',
      image: asset + 'ravioli1.jpg',
    ),
    Category(
      name: 'Зразы',
      image: asset + 'zrazi.jpg',
    ),
  ];
}
