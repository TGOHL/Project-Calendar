import 'package:project_calendar/shared/config/assets.dart';

enum HomePageType {
  categories('Categories', AppAssets.categoryDark, AppAssets.category),
  projects('Project Summary', AppAssets.folderDark, AppAssets.folder),
  calendar('Calendar', AppAssets.calendarDark, AppAssets.calendar),
  profile('Profile', AppAssets.personDark, AppAssets.person);

  final String label;
  final String selectedIconAsset;
  final String unselectedIconAsset;

  const HomePageType(this.label, this.selectedIconAsset, this.unselectedIconAsset);
}
