import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NetAmount extends StatefulWidget {
  final String buy;
  final String sell;

  const NetAmount({super.key, this.buy = '', this.sell = ''});

  @override
  State<NetAmount> createState() => _ProfitFormState();
}

class _ProfitFormState extends State<NetAmount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color.fromARGB(255, 109, 139, 165),
      ),
      child: Column(
        children: [
          const Text(
            'Net Amount',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 24,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(255, 0, 112, 4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Buy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      Text(
                        widget.buy.isNotEmpty
                            ? 'Rp ${NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0).format(int.parse(widget.buy))},00'
                            : '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(255, 107, 7, 0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Sell',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      Text(
                          widget.sell.isNotEmpty
                              ? 'Rp ${NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0).format(int.parse(widget.sell))},00'
                              : '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          )),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
