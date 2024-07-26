import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/themes.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      height: 56.h,
      child: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: AppThemes.main,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32.w,
        ),
      ),
    );
  }
}
