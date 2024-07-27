import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:project_calendar/shared/enums/home_page_type.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomePageType _page = HomePageType.projects;
  String get title => _page.label;
  HomePageType get currentPage => _page;

  final PageController pageController = PageController(initialPage: 1);

  set setPage(HomePageType p) {
    if (_page == p) return;
    _page = p;
    pageController.animateToPage(
      p.index,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
    emit(HomePageChangedState());
  }

  HomeCubit() : super(HomeInitial());

  void init() {}

  void setPageIndex(int index) {
    if (_page.index == index) return;
    _page = HomePageType.values[index];
    emit(HomePageChangedState());
  }
}
