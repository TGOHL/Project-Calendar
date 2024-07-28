import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/home/cubit/home_cubit.dart';
import 'package:project_calendar/shared/config/assets.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/widgets/utils/horizontal_space.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(context.watch<HomeCubit>().title),
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          color: AppThemes.borderColor,
          height: 1.5.h,
        ),
      ),
      actions: [
        GestureDetector(
          child: Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: AppThemes.scaffoldSecondary,
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(color: AppThemes.borderColor, width: 1.5.w),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  top: 6.w,
                  bottom: 6.w,
                  right: 6.w,
                  left: 6.w,
                  child: Image.asset(
                    AppAssets.notification,
                  ),
                ),
                Positioned(
                  top: 5.h,
                  right: 4.w,
                  child: Container(
                    width: 9.w,
                    height: 9.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppThemes.notificationColor,
                      border: Border.all(color: Colors.white, width: 1.5.w),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        HorizontalSpace(width: 24.w)
      ],
    );
  }

  @override
  Size get preferredSize => Size(ScreenUtil().screenWidth, 70.h);
}
