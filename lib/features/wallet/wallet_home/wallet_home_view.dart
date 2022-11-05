import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wallet_ui/Theme/app_colors.dart';

import 'wallet_home_viewmodel.dart';

class WalletHomeView extends StatelessWidget {
  const WalletHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletHomeViewModel>.reactive(
      viewModelBuilder: () => WalletHomeViewModel(),
      builder: (
        BuildContext context,
        WalletHomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            body: Row(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                child: SafeArea(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.wallet),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'UI',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        Text(
                          'Animation',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => model.openWallet(),
              child: Container(
                height: double.infinity,
                width: 80,
                color: Colors.black,
                child: SafeArea(
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Open Wallet',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.wallet)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
      },
    );
  }
}
