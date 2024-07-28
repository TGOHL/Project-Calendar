import 'package:flutter/material.dart';

import '../../config/themes.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (_) async => false,
      child: const Center(
        child: CircularProgressIndicator(
          color: AppThemes.main,
        ),
      ),
    );
  }
}
