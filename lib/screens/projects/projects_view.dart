part of 'projects_layout.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
        return ListView(
          children: [
            Container(
              color: AppThemes.scaffoldSecondary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                    child: CustomTextField(
                      label: 'Search',
                      hint: 'Search project here',
                      suffixIcon: Container(
                        width: 24.w,
                        height: 24.w,
                        padding: EdgeInsets.all(10.w).copyWith(right: 0),
                        child: Image.asset(AppAssets.search),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProjectsCount(projectState: ProjectState.inProgress, count: 10),
                        ProjectsCount(projectState: ProjectState.completed, count: 24),
                        ProjectsCount(projectState: ProjectState.canceled, count: 5),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                    child: OutlinedButton(onPressed: projectsCubit.viewAllProjects, child: const Text('View All Project')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24.w),
              child: ProductivityView(
                maxBaHeight: 152.h,
                bars: projectsCubit.productivityBars,
                onBarTap: projectsCubit.onProductivityBarTap,
              ),
            ),
          ],
        );
      },
    );
  }
}
