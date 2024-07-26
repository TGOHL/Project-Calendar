part of 'projects_layout.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
        return Center(
          child: Text('Projects Screen'),
        );
      },
    );
  }
}
