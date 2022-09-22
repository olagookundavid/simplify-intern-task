import 'package:flutter/material.dart';

class HSizer extends StatelessWidget {
  const HSizer({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
