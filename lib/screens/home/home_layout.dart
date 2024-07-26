import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_calendar/screens/calendar/calendar_layout.dart';
import 'package:project_calendar/screens/categories/categories_layout.dart';
import 'package:project_calendar/screens/home/cubit/home_cubit.dart';
import 'package:project_calendar/screens/home/widgets/custom_app_bar.dart';
import 'package:project_calendar/screens/home/widgets/custom_bottom_nav_bar.dart';
import 'package:project_calendar/screens/home/widgets/custom_floating_button.dart';
import 'package:project_calendar/screens/profile/profile_layout.dart';
import 'package:project_calendar/screens/projects/projects_layout.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/helpers/toast_helper.dart';

part 'home_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeErrorState) {
          ToastHelper.of(context).showError(state.error.toString());
        }
      },
      child: const HomeView(),
    );
  }
}
