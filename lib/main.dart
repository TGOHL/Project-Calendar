import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/router.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/helpers/initialization_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await InitializationHelper.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => homeCubit),
        BlocProvider(create: (_) => calendarCubit),
        BlocProvider(create: (_) => projectsCubit),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Project Calendar',
            theme: AppThemes.lightTheme(context),
            darkTheme: AppThemes.darkTheme(context),
            themeMode: ThemeMode.light,
            home: child,
            routes: AppRouter.router(),
          );
        },
      ),
    );
  }
}
