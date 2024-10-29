import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kalkulator_saham/widgets/background.dart';
import 'package:kalkulator_saham/widgets/form.dart';
import 'package:kalkulator_saham/widgets/net_amount.dart';
import 'package:kalkulator_saham/widgets/profit_loss.dart';
import 'package:kalkulator_saham/providers/provider.dart';

class ProfitCalc extends ConsumerStatefulWidget {
  const ProfitCalc({super.key});

  @override
  ConsumerState<ProfitCalc> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<ProfitCalc> {
  double? buyAmount;
  double? sellAmount;
  double? profitLoss;
  double? percentage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
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
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Profit Calculator',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const ProfitForm(),
              const SizedBox(
                height: 30,
              ),
              NetAmount(
                buy: buyAmount?.toString() ?? '',
                sell: sellAmount?.toString() ?? '',
              ),
              const SizedBox(
                height: 30,
              ),
              ProfitLoss(
                profit: profitLoss?.toString() ?? '',
                percentage: percentage?.toString() ?? '',
              ),
              Text(profitLoss != null && profitLoss!.isFinite
                  ? '(*Sudah termasuk Fee Beli: 0.00% dan Fee Jual: 0.00%.)'
                  : ''),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(30, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          buyAmount = null;
                          sellAmount = null;
                          profitLoss = null;
                          percentage = null;
                        });
                        final profitFormNotifier =
                            ref.read(profitFormProvider.notifier);
                        profitFormNotifier.updateSaham('');
                        profitFormNotifier.updateLot('');
                        profitFormNotifier.updateBuyPrice('');
                        profitFormNotifier.updateSellPrice('');
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(255, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        final profitFormState = ref.watch(profitFormProvider);
                        final lot =
                            int.tryParse(profitFormState.lotController.text) ??
                                0;
                        final buyPrice = double.tryParse(
                                profitFormState.buyPriceController.text) ??
                            0.0;
                        final sellPrice = double.tryParse(
                                profitFormState.sellPriceController.text) ??
                            0.0;
                        buyAmount = lot * 100 * buyPrice;
                        sellAmount = lot * 100 * sellPrice;
                        profitLoss = sellAmount! - buyAmount!;
                        percentage = (profitLoss! / buyAmount!) * 100;

                        setState(() {});
                      },
                      child: const Text(
                        'Hasil',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
