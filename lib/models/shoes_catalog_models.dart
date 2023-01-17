class Shoes {
  String name;
  String price;
  String age_category;
  List<String> images;
  String category;
  String descriptions;

  Shoes(
      {required this.name,
      required this.price,
      required this.images,
      required this.age_category,
      required this.category,
      required this.descriptions});
}

List<Shoes> shoes_catalog = [
  Shoes(
      name: 'Nike Air Max 270 Essential',
      price: '\$179.39',
      images: [
        'nike_air_max_270_essential_1.png',
        'nike_air_max_270_essential_2.png',
        'nike_air_max_270_essential_3.png',
        'nike_air_max_270_essential_4.png',
        'nike_air_max_270_essential_5.png',
      ],
      age_category: 'Men\'s Shoes',
      category: 'Outdoor',
      descriptions:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike has offered to its beloved customers.'),
  Shoes(
      name: 'Nike Jordan',
      price: '\$58.7',
      images: ['nike_jordan_1.png', 'nike_jordan_2.png'],
      age_category: 'Men\'s Shoes',
      category: 'Outdoor',
      descriptions:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non lorem ac enim eleifend. nterdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus molestie lobortis lectus.'),
  Shoes(
      name: 'Nike Club Max',
      price: '\$47.7',
      images: ['nike_club_max_1.png', 'nike_club_max_2.png'],
      age_category: 'Men\'s Shoes',
      category: 'Outdoor',
      descriptions:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non lorem ac enim eleifend. nterdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus molestie lobortis lectus.'),
];
