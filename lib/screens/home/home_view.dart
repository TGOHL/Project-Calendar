part of 'home_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingButton(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return PageView(
            controller: homeCubit.pageController,
            onPageChanged: homeCubit.setPageIndex,
            children: const [
              CategoriesScreen(),
              ProjectsScreen(),
              CalendarScreen(),
              ProfileScreen(),
            ],
          );
        },
      ),
    );
  }
}
