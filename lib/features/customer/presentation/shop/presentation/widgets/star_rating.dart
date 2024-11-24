import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int totalReviews;

  const StarRating({
    super.key,
    required this.rating,
    required this.totalReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 1; i <= 5; i++)
          Icon(
            i <= rating
                ? Icons.star
                : i - rating < 1
                    ? Icons.star_half
                    : Icons.star_border,
            color: Colors.amber,
          ),
        const SizedBox(width: 8),
        Text(
          totalReviews.toString(),
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
