import 'package:stacked/stacked.dart';

class WalletViewModel extends BaseViewModel {
  final ReactiveValue<double> _balance = ReactiveValue(9999.99);
  get balance => _balance.value;

  Future<void> init() async {
    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      _balance.value = 2208.02;
      notifyListeners();
    });
  }

  increase() {
    _balance.value += 234;
    notifyListeners();
  }

  payNow() {
    _balance.value -= 234;
    notifyListeners();
  }
}
