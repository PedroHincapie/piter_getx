import 'package:meta/meta.dart' show required;

class Product {
  final int id;
  final String name;
  final String description;
  final double price, rate;
  bool favorita = false;

  Product({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.rate,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["Product ID"],
        name: json["Name"],
        price: json["Price"].toDouble(),
        description: json["Description"],
        rate: json["Rating Avg"].toDouble(),
      );
}
