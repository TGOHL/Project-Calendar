part of 'calendar_layout.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        return Center(
          child: Text('Calendar Screen'),
        );
      },
    );
  }
}
