import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/projects/cubit/projects_cubit.dart';
import 'package:project_calendar/screens/projects/widgets/productivity/productivity_view.dart';
import 'package:project_calendar/screens/projects/widgets/projects_count.dart';
import 'package:project_calendar/shared/config/assets.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/enums/project_state.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/helpers/toast_helper.dart';
import 'package:project_calendar/shared/widgets/textfield/custom_text_field.dart';

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
