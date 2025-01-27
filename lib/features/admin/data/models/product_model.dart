class Product {
  final String id;
  final String name;
  final String description;
  final String price;
  final bool stock;
  final String category;
  final String imageUrl;
  final String rating;
  final String createdAt;
  final String updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'category': category,
      'imageUrl': imageUrl,
      'rating': rating,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as String,
      stock: map['stock'] as bool,
      category: map['category'] as String,
      imageUrl: map['imageUrl'] as String,
      rating: map['rating'] as String,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
