part of 'projects_cubit.dart';

@immutable
sealed class ProjectsState {}

final class ProjectsInitial extends ProjectsState {}

final class ProductBarChangedState extends ProjectsState {}

class ProjectsErrorState extends ProjectsState {
  final Exception error;

  ProjectsErrorState(this.error);
}
