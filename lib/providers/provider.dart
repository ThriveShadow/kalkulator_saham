import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfitFormData {
  final TextEditingController sahamController;
  final TextEditingController lotController;
  final TextEditingController buyPriceController;
  final TextEditingController sellPriceController;

  ProfitFormData({
    required this.sahamController,
    required this.lotController,
    required this.buyPriceController,
    required this.sellPriceController,
  });
}

class ProfitFormNotifier extends StateNotifier<ProfitFormData> {
  ProfitFormNotifier()
      : super(ProfitFormData(
          sahamController: TextEditingController(),
          lotController: TextEditingController(),
          buyPriceController: TextEditingController(),
          sellPriceController: TextEditingController(),
        ));

  void updateSaham(String value) {
    state.sahamController.text = value;
  }

  void updateLot(String value) {
    state.lotController.text = value;
  }

  void updateBuyPrice(String value) {
    state.buyPriceController.text = value;
  }

  void updateSellPrice(String value) {
    state.sellPriceController.text = value;
  }

  @override
  void dispose() {
    // Dispose the controllers to free memory
    state.sahamController.dispose();
    state.lotController.dispose();
    state.buyPriceController.dispose();
    state.sellPriceController.dispose();
    super.dispose();
  }
}

// Create a provider for the form state
final profitFormProvider =
    StateNotifierProvider<ProfitFormNotifier, ProfitFormData>(
  (ref) => ProfitFormNotifier(),
);
