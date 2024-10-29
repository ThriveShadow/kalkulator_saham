import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;

  const GradientContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 0, 54, 90),
            Color.fromARGB(255, 0, 31, 39),
          ],
          radius: 0.6,
        ),
      ),
      child: child,
    );
  }
}