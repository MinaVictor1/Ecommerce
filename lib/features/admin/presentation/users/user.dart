import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/features/admin/presentation/users/widgets/user_search_bar.dart';
import 'package:ecommerce/features/admin/presentation/users/widgets/user_table.dart';
import 'package:ecommerce/features/admin/presentation/widgets/admin_appbar.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final List<Map<String, String>> _users = [
    {'name': 'Androw', 'email': 'androw@mail.com'},
    {'name': 'Mena', 'email': 'mena@gmail.com'},
    {'name': 'Mariem', 'email': 'mariem@gmail.com'},
    {'name': 'Karol', 'email': 'karol@gmail.com'},
    {'name': 'Shnoda', 'email': 'shnoda@gmail.com'},
    {'name': 'Mena', 'email': 'mena@gmail.com'},
    {'name': 'Mariem', 'email': 'mariem@gmail.com'},
    {'name': 'Karol', 'email': 'karol@gmail.com'},
    {'name': 'Shnoda', 'email': 'shnoda@gmail.com'},
    {'name': 'Mena', 'email': 'mena@gmail.com'},
    {'name': 'Mariem', 'email': 'mariem@gmail.com'},
    {'name': 'Karol', 'email': 'karol@gmail.com'},
    {'name': 'Shnoda', 'email': 'shnoda@gmail.com'},
    {'name': 'Mena', 'email': 'mena@gmail.com'},
    {'name': 'Mariem', 'email': 'mariem@gmail.com'},
    {'name': 'Karol', 'email': 'karol@gmail.com'},
    {'name': 'Shnoda', 'email': 'shnoda@gmail.com'},
  ];

  List<Map<String, String>> _filteredUsers = [];
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _filteredUsers = List.from(_users); // يعرض كل اليوزرز
  }

  void _updateSearchQuery(String query) {
    setState(() {
      // يحفظ السيرش
      _searchQuery = query.toLowerCase().trim();
      // يعرض اليوزرز
      _filteredUsers = _users.where((user) {
        final name = user['name']!.toLowerCase().trim();
        final email = user['email']!.toLowerCase().trim();
        return name.contains(_searchQuery) || email.contains(_searchQuery);
      }).toList();
    });
  }

  void _deleteUser(Map<String, String> user) {
    setState(() {
      _users.remove(user);
      _filteredUsers.remove(user);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AdminAppBar(
        title: 'Users',
        isMain: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            UserSearchBar(onSearch: _updateSearchQuery),
            const SizedBox(height: 10),
            Expanded(
              // يعرض اليوزرز
              child: _filteredUsers.isEmpty
                  // لا يوجد يوزرز
                  ? const Center(
                      child: Text(
                        'No users found',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    )
                  // يوجد يوزرز
                  : UserTable(
                      users: _filteredUsers,
                      searchQuery: _searchQuery,
                      onDelete: _deleteUser,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
