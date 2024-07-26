import 'package:flutter/material.dart';

part 'categories_view.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories-screen';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CategoriesView();
  }
}
