import 'package:flutter/material.dart';
import 'package:project_calendar/shared/config/assets.dart';
import 'package:project_calendar/shared/config/themes.dart';

enum ProjectState {
  inProgress(AppAssets.clock, 'Project\nIn Progress', AppThemes.blue, AppThemes.blueLight, Color(0xCC5EACE4)),
  completed(AppAssets.verify, 'Project\nCompleted', AppThemes.green, AppThemes.greenLight, Color(0xCC58B2B4)),
  canceled(AppAssets.closeCircle, 'Project\nCanceled', AppThemes.red, AppThemes.redLight, Color(0xCCE77474));

  final String imageAsset;
  final String label;
  final Color mainColor;
  final Color secondaryColor;
  final Color shadowColor;

  List<Color> get gradient => [secondaryColor, mainColor];

  const ProjectState(this.imageAsset, this.label, this.mainColor, this.secondaryColor, this.shadowColor);
}
