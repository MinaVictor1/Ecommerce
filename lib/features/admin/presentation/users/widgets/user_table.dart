import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

class UserTable extends StatelessWidget {
  final List<Map<String, String>> users;
  final String searchQuery;
  final Function(Map<String, String>) onDelete;

  const UserTable({
    super.key,
    required this.users,
    required this.searchQuery,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final columnSpacing = screenWidth < 600 ? 20.0 : 40.0;

    // فلتر السيرش
    final filteredUsers = users.where((user) {
      if (searchQuery.trim().isEmpty) return true; // عرض الكل لو كان البحث فاضي

      final query = searchQuery.toLowerCase().trim();
      final name = user['name']?.toLowerCase().trim() ?? '';
      final email = user['email']?.toLowerCase().trim() ?? '';

      return name.contains(query) || email.contains(query);
    }).toList();

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
              ),
              child: DataTable(
                // المسافة في الكولمن
                columnSpacing: columnSpacing,

                // لون خلفية  الهيدر
                headingRowColor: WidgetStateColor.resolveWith(
                  (states) => ColorsManager.gray,
                ),

                // تنسيق الهيدر
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),

                // لون خلفية الصفوف
                dataRowColor: WidgetStateColor.resolveWith(
                  (states) => Colors.white,
                ),

                // شكل النصوص في الكولمن
                dataTextStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),

                // إطار الجدول
                border: TableBorder.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1.5,
                ),

                //
                columns: const [
                  DataColumn(
                    label: Row(
                      children: [
                        Icon(Icons.person, color: ColorsManager.pink),
                        SizedBox(width: 8),
                        Text('Name'),
                      ],
                    ),
                  ),
                  DataColumn(
                    label: Row(
                      children: [
                        Icon(Icons.email, color: Colors.blue),
                        SizedBox(width: 8),
                        Text('Email'),
                      ],
                    ),
                  ),
                  DataColumn(
                    label: Row(
                      children: [
                        SizedBox(width: 11),
                        Icon(Icons.delete, color: Colors.red),
                        SizedBox(width: 8),
                        Text('Delete'),
                      ],
                    ),
                  ),
                ],

                // الصفوف
                rows: filteredUsers.map((user) {
                  return DataRow(
                    cells: [
                      DataCell(
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.person,
                                  color: ColorsManager.pink),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  user['name'] ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.email, color: Colors.blue),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  user['email'] ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => onDelete(user),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
