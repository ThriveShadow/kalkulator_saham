import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  const Back(this.text, this.color, {super.key});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.black,
        minimumSize: const Size(400, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
