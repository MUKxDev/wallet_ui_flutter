import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class WalletHomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  openWallet() async {
    _navigationService.navigateToWalletView();
  }
}
