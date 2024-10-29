import 'package:flutter/material.dart';

class ProfitForm extends StatefulWidget {
  const ProfitForm({super.key});

  @override
  State<ProfitForm> createState() => _ProfitFormState();
}

class _ProfitFormState extends State<ProfitForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 430.0,
      height: 305.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 12, 94, 95),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Saham :',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 24,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Contoh : PGAS',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Lot :',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 24,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Contoh : 10',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Buy Price :',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 24,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Contoh : 2010',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Sell Price :',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 24,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Contoh : 2250',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
