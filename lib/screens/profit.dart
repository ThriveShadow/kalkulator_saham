import 'package:flutter/material.dart';
import 'package:kalkulator_saham/widgets/background.dart';
import 'package:kalkulator_saham/widgets/form.dart';
import 'package:kalkulator_saham/widgets/net_amount.dart';
import 'package:kalkulator_saham/widgets/profit_loss.dart';

class ProfitCalc extends StatefulWidget {
  const ProfitCalc({super.key});

  @override
  State<ProfitCalc> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfitCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kalkulator Saham',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Profit Calculator',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const ProfitForm(),
              const SizedBox(
                height: 30,
              ),
              const NetAmount(),
              const SizedBox(
                height: 30,
              ),
              const ProfitLoss(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(30, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Reset',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(310, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Hasil',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
