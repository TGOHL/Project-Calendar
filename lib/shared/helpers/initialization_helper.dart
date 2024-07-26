import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_calendar/shared/config/observer.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';

class InitializationHelper {
  static Future<void> initialize() async {
    Bloc.observer = MyBlocObserver();
    GetItHelper().getItInitialization();
  }
}
