import 'package:flutter/material.dart';
import 'package:kalkulator_saham/widget/background.dart';
import 'package:kalkulator_saham/screens/profit.dart';
import 'package:kalkulator_saham/widget/Yellow_button.dart';
import 'package:kalkulator_saham/widget/back_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                'Kalkulator\nSaham',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: SizedBox(
                  height: 600,
                  width: 400,
                  child: ListView(
                    children: [
                      YellowButton('Profit Calculator', onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfitCalc()),
                        );
                      }),
                      const YellowButton('Average Calculator'),
                      const YellowButton('Compound Interest Calculator'),
                      const YellowButton('Cash Dividend Calculator'),
                      const YellowButton('Pivot Point'),
                      const YellowButton('Fibonacci Calculator -\n Uptrend'),
                      const YellowButton('Fibonacci Calculator -\n Downtrend'),
                      const YellowButton('Price Action'),
                      const YellowButton('Watchlist'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Back('Back', Colors.white),
              const SizedBox(height: 25),
              const Text('Versi 2024.10.26'),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
