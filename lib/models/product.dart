class Product {
  final String id;
  final String title;
  final String description;
  final String memory;
  final String color;
  final int price;
  final double rating;
  final bool stock;
  final String image;
  final List<String> features;
  final int discount;
  final String category;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.memory,
    required this.color,
    required this.price,
    required this.rating,
    required this.stock,
    required this.image,
    required this.features,
    required this.discount,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      memory: json['memory'],
      color: json['color'],
      price: json['price'],
      rating: (json['rating'] as num).toDouble(),
      stock: json['stock'],
      image: json['image'],
      features: List<String>.from(json['features']),
      discount: json['discount'],
      category: json['category'],
    );
  }
}
