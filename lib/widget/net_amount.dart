import 'package:flutter/material.dart';

class NetAmount extends StatefulWidget {
  const NetAmount({super.key});

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
                  child: const Text('Buy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                      )),
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
                  child: const Text('Sell',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
