import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../features/wallet/open_wallet/wallet_view.dart';
import '../features/wallet/wallet_home/wallet_home_view.dart';

@StackedApp(
  logger: StackedLogger(),
  dependencies: [
    LazySingleton(
        classType: ThemeService, resolveUsing: ThemeService.getInstance),
    Singleton(classType: NavigationService),
    Singleton(classType: DialogService),
    Singleton(classType: SnackbarService),
    Singleton(classType: BottomSheetService),
  ],
  routes: [
    CupertinoRoute(page: WalletHomeView, initial: true),
    CupertinoRoute(page: WalletView),
  ],
)
class App {}
