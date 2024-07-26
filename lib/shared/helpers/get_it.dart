import 'package:get_it/get_it.dart';
import 'package:project_calendar/screens/home/cubit/home_cubit.dart';

final locator = GetIt.instance;
HomeCubit get homeCubit => locator();

class GetItHelper {
  void getItInitialization() {
    locator.registerSingleton<HomeCubit>(HomeCubit());
  }
}
