part of 'calendar_layout.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    calendarCubit.setTapbarController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      calendarCubit.init();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              color: AppThemes.scaffoldSecondary,
              child: Column(
                children: [
                  const CalendarDateControllerView(),
                  const CalendarDatesList(),
                  VerticalSpace(height: contentPadding),
                  const ScheduleTaskTabBar(),
                ],
              ),
            ),
            const Expanded(child: ScheduleTaskTabView())
          ],
        );
      },
    );
  }
}
