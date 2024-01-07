class Items {
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items({
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

final products = [
  Items(
      name: "iPhone 15",
      desc: "iPhone 15th generation",
      price: 999,
      color: "#33505a",
      image: "#33505a")
];
