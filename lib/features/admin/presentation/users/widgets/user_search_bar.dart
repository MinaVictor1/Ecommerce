import 'package:flutter/material.dart';

class UserSearchBar extends StatelessWidget {
  final Function(String) onSearch;

  const UserSearchBar({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        labelText: 'Search for users',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search),
      ),
      onChanged: onSearch,
    );
  }
}
