part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomePageChangedState extends HomeState {}

class HomeErrorState extends HomeState {
  final Exception error;

  HomeErrorState(this.error);
}
