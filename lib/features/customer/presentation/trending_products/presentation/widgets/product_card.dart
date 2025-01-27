import 'package:ecommerce/features/admin/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

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
              product.imageUrl,
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

final List<Product> products = [
  Product(
    id: "1",
    name: 'Black Winter Coat',
    description: 'Autumn And Winter Casual cotton padded jacket...',
    price: "49.99",
    stock: true,
    category: 'Clothing',
    imageUrl: 'assets/images/gifts.png',
    rating: "4.8",
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
  ),
  Product(
    id: "2",
    name: 'Mens Starry Shirt',
    description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric...',
    price: "39.99",
    stock: true,
    category: 'Clothing',
    imageUrl: 'assets/images/Sales consulting-pana 1.png',
    rating: "4.7",
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
  ),
  Product(
    id: "3",
    name: 'Women’s Summer Dress',
    description: 'Light and breezy floral dress perfect for summer...',
    price: "29.99",
    stock: true,
    category: 'Clothing',
    imageUrl: 'assets/images/summer_dress.png',
    rating: "4.6",
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
  ),
  Product(
    id: "4",
    name: 'Leather Handbag',
    description: 'Stylish leather handbag for all occasions...',
    price: "89.99",
    stock: false,
    category: 'Accessories',
    imageUrl: 'assets/images/handbag.png',
    rating: "4.9",
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
  ),
  Product(
    id: "5",
    name: 'Running Shoes',
    description: 'Lightweight and comfortable running shoes...',
    price: "59.99",
    stock: true,
    category: 'Footwear',
    imageUrl: 'assets/images/running_shoes.png',
    rating: "4.7",
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
  ),
  Product(
    id: "6",
    name: 'Wireless Earbuds',
    description: 'High-quality sound with noise cancellation...',
    price: "99.99",
    stock: false,
    category: 'Electronics',
    imageUrl: 'assets/images/earbuds.png',
    rating: "4.8",
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
  ),
];
