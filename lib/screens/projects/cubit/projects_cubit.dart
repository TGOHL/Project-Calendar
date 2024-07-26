import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsInitial());
}
