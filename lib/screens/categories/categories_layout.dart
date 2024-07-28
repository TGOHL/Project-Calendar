import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/assets.dart';

part 'categories_view.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories-screen';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CategoriesView();
  }
}
