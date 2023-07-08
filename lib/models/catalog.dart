class Item {
  final String id;
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
    required this.image,
  });
}

final products = [
  Item(
    id: "Akriti001",
    name: "Iphone",
    desc: "Apple iPhone 12th generation",
    price: 999.0,
    color: "#33505a",
    image: "https://example.com/iphone_image.jpg", // Replace with your actual image URL or path
  ),
];
