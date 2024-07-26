import 'package:project_calendar/shared/config/assets.dart';

enum SocialProvider {
  google(AppAssets.googleLogo, 'Google'),
  apple(AppAssets.appleLogo, 'Apple'),
  facebook(AppAssets.facebookLogo, 'Facebook');

  final String imageAsset;
  final String label;

  const SocialProvider(this.imageAsset, this.label);
}
