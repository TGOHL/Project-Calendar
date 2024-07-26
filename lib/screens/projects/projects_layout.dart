import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_calendar/screens/projects/cubit/projects_cubit.dart';
import 'package:project_calendar/shared/helpers/toast_helper.dart';

part 'projects_view.dart';

class ProjectsScreen extends StatelessWidget {
  static const routeName = '/projects-screen';

  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProjectsCubit, ProjectsState>(
      listener: (context, state) {
        if (state is ProjectsErrorState) {
          ToastHelper.of(context).showError(state.error.toString());
        }
      },
      child: const ProjectsView(),
    );
  }
}
