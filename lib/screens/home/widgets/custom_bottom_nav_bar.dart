import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/home/cubit/home_cubit.dart';
import 'package:project_calendar/shared/enums/home_page_type.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/widgets/horizontal_space.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedPage = context.watch<HomeCubit>().currentPage;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.h),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24.h),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Image.asset(
                selectedPage == HomePageType.categories ? HomePageType.categories.selectedIconAsset : HomePageType.categories.unselectedIconAsset,
                width: 20.w,
              ),
              onPressed: () => {homeCubit.setPage = HomePageType.categories},
            ),
            IconButton(
              icon: Image.asset(
                selectedPage == HomePageType.projects ? HomePageType.projects.selectedIconAsset : HomePageType.projects.unselectedIconAsset,
                width: 20.w,
              ),
              onPressed: () => {homeCubit.setPage = HomePageType.projects},
            ),
            HorizontalSpace(width: 40.w),
            IconButton(
              icon: Image.asset(
                selectedPage == HomePageType.calendar ? HomePageType.calendar.selectedIconAsset : HomePageType.calendar.unselectedIconAsset,
                width: 20.w,
              ),
              onPressed: () => {homeCubit.setPage = HomePageType.calendar},
            ),
            IconButton(
              icon: Image.asset(
                selectedPage == HomePageType.profile ? HomePageType.profile.selectedIconAsset : HomePageType.profile.unselectedIconAsset,
                width: 20.w,
              ),
              onPressed: () => {homeCubit.setPage = HomePageType.profile},
            ),
          ],
        ),
      ),
    );
  }
}
