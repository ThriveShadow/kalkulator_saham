import 'package:flutter/material.dart';
import 'package:kalkulator_saham/widget/background.dart';

class ProfitCalc extends StatefulWidget {
  const ProfitCalc({super.key});

  @override
  State<ProfitCalc> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfitCalc> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientContainer(
        child: Center(),
      ),
    );
  }
}
