import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              product.image,
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  product.description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 14),
                        Text(
                          product.rating.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final String image;
  final double price;
  final double rating;

  Product({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  });
}

final List<Product> products = [
  Product(
    name: 'Black Winter Coat',
    description: 'Autumn And Winter Casual cotton padded jacket...',
    image: 'assets/images/gifts.png',
    price: 49.99,
    rating: 4.8,
  ),
  Product(
    name: 'Mens Starry Shirt',
    description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric...',
    image: 'assets/images/Sales consulting-pana 1.png',
    price: 39.99,
    rating: 4.7,
  ),
  Product(
    name: 'Black Winter Coat',
    description: 'Autumn And Winter Casual cotton padded jacket...',
    image: 'assets/images/gifts.png',
    price: 49.99,
    rating: 4.8,
  ),
  Product(
    name: 'Black Winter Coat',
    description: 'Autumn And Winter Casual cotton padded jacket...',
    image: 'assets/images/gifts.png',
    price: 49.99,
    rating: 4.8,
  ),
  Product(
    name: 'Black Winter Coat',
    description: 'Autumn And Winter Casual cotton padded jacket...',
    image: 'assets/images/gifts.png',
    price: 49.99,
    rating: 4.8,
  ),
  Product(
    name: 'Black Winter Coat',
    description: 'Autumn And Winter Casual cotton padded jacket...',
    image: 'assets/images/gifts.png',
    price: 49.99,
    rating: 4.8,
  ),
];
