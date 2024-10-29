import 'package:flutter/material.dart';

class ProfitLoss extends StatefulWidget {
  const ProfitLoss({super.key});

  @override
  State<ProfitLoss> createState() => _ProfitFormState();
}

class _ProfitFormState extends State<ProfitLoss> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color.fromARGB(255, 26, 104, 173),
      ),
      child: Column(
        children: [
          const Text(
            'Profit / Loss',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 24,
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color.fromARGB(255, 15, 164, 223),
            ),
            //child:
          ),
        ],
      ),
    );
  }
}
