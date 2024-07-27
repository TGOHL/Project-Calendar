import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:project_calendar/shared/models/app/productivity_bar.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  final List<ProductivityBarModel> _productivityBars = [
    ProductivityBarModel(date: DateTime(2024, 1), percentage: 0),
    ProductivityBarModel(date: DateTime(2024, 2), percentage: 100),
    ProductivityBarModel(date: DateTime(2024, 3), percentage: 40),
    ProductivityBarModel(date: DateTime(2024, 4), percentage: 56),
    ProductivityBarModel(date: DateTime(2024, 5), percentage: 66),
    ProductivityBarModel(date: DateTime(2024, 6), percentage: 68),
  ];

  int _selectedProductivityBarIndex = 3;

  List<ProductivityBarModel> get productivityBars => [..._productivityBars];
  int get selectedProductivityBarIndex => _selectedProductivityBarIndex;
  ProjectsCubit() : super(ProjectsInitial());

  void viewAllProjects() {}

  void onProductivityBarTap(ProductivityBarModel bar, int index) {
    if (_selectedProductivityBarIndex == index) return;
    _selectedProductivityBarIndex = index;
    emit(ProductBarChangedState());
  }
}
