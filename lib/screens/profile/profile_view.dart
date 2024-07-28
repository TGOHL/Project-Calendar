part of 'profile_layout.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppAssets.comingSoon,
        width: 300.w,
      ),
    );
  }
}
