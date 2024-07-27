import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/projects/cubit/projects_cubit.dart';
import 'package:project_calendar/screens/projects/widgets/productivity/productivity_bar.dart';
import 'package:project_calendar/shared/config/constants.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/models/app/productivity_bar.dart';
import 'package:project_calendar/shared/widgets/horizontal_space.dart';

class ProductivityView extends StatelessWidget {
  final double maxBaHeight;
  final List<ProductivityBarModel> bars;
  final Function(ProductivityBarModel bar, int index)? onBarTap;
  const ProductivityView({super.key, required this.maxBaHeight, required this.bars, this.onBarTap});
  double get bottomSpace => 36.h;
  double get topSpace => 28.h;
  @override
  Widget build(BuildContext context) {
    if (bars.isEmpty) return const SizedBox();
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      buildWhen: (previous, current) => current is ProductBarChangedState,
      builder: (context, state) {
        return SizedBox(
          width: 375.w,
          height: topSpace + contentPadding + maxBaHeight + bottomSpace,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Productivity',
                    style: AppStyles.kB18TextStyle,
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: AppThemes.main,
                    size: 24.w,
                  )
                ],
              ),
              Positioned.fill(
                child: SizedBox(
                  width: 275.w,
                  height: maxBaHeight + bottomSpace,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: bars.length,
                    separatorBuilder: (context, index) => HorizontalSpace(width: 8.w),
                    itemBuilder: (context, index) => ProductivityBar(
                      productivityBarModel: bars[index],
                      maxHeight: maxBaHeight,
                      isSelected: projectsCubit.selectedProductivityBarIndex == index,
                      onBarTap: () {
                        onBarTap?.call(bars[index], index);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
