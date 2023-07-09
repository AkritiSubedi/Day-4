class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Iphone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999.0,
      color: "#33505a",
      image:
          "https://www.apple.com/newsroom/images/product/iphone/standard/apple_iphone-12_new-design_10132020.jpg.news_app_ed.jpg", // Replace with your actual image URL or path
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final double price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image
  });
}
