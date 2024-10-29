import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  const YellowButton(this.text, {this.onPressed = _doNothing, super.key});

  static void _doNothing() {}
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            minimumSize: const Size(400, 70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
