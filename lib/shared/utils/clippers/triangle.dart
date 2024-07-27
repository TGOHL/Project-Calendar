import 'package:flutter/material.dart';

class ProductivityBarPercentageClipper extends CustomClipper<Path> {
  final double radius;
  final Size triangleSize;
  ProductivityBarPercentageClipper({super.reclip, required this.radius, required this.triangleSize});
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius))
      ..lineTo(size.width, size.height - triangleSize.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height - triangleSize.height), radius: Radius.circular(radius))
      ..lineTo(size.width / 2 + triangleSize.width / 2, size.height - triangleSize.height)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width / 2 - triangleSize.width / 2, size.height - triangleSize.height)
      ..lineTo(radius, size.height - triangleSize.height)
      ..arcToPoint(Offset(0, size.height - triangleSize.height - radius), radius: Radius.circular(radius))
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
