import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kalkulator_saham/providers/provider.dart';

class ProfitForm extends ConsumerWidget {
  const ProfitForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formData = ref.watch(profitFormProvider);

    return Container(
      padding: const EdgeInsets.all(20),
      width: 430.0,
      height: 305.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 12, 94, 95),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          _buildFormRow(
            label: 'Saham :',
            hintText: 'Contoh : PGAS',
            controller: formData.sahamController,
          ),
          const SizedBox(height: 10),
          _buildFormRow(
            label: 'Lot :',
            hintText: 'Contoh : 10',
            controller: formData.lotController,
          ),
          const SizedBox(height: 10),
          _buildFormRow(
            label: 'Buy Price :',
            hintText: 'Contoh : 2010',
            controller: formData.buyPriceController,
          ),
          const SizedBox(height: 10),
          _buildFormRow(
            label: 'Sell Price :',
            hintText: 'Contoh : 2250',
            controller: formData.sellPriceController,
          ),
        ],
      ),
    );
  }

  Widget _buildFormRow({
    required String label,
    required String hintText,
    required TextEditingController controller,
  }) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 24,
                  color: Colors.white,
                  height: 2,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                  controller: controller,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(),
                    hintText: hintText,
                    hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
