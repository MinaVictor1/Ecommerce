import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return const Text('Home Page');
        },
      ),
    );
  }
}
