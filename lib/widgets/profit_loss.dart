import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfitLoss extends StatefulWidget {
  final String profit;
  final String percentage;
  const ProfitLoss({super.key, this.profit = '', this.percentage = ''});

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.profit.isNotEmpty
                      ? 'Rp ${NumberFormat.currency(locale: 'id', symbol: '').format(double.tryParse(widget.profit) ?? 0)}'
                      : '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.percentage.isNotEmpty
                      ? '(${(double.tryParse(widget.percentage) ?? 0).toStringAsFixed(2)}%)'
                      : '',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
