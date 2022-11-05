// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i5;
import 'package:wallet_ui/features/wallet/open_wallet/wallet_view.dart' as _i3;
import 'package:wallet_ui/features/wallet/wallet_home/wallet_home_view.dart'
    as _i2;

class Routes {
  static const walletHomeView = '/';

  static const walletView = '/wallet-view';

  static const all = <String>{
    walletHomeView,
    walletView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.walletHomeView,
      page: _i2.WalletHomeView,
    ),
    _i1.RouteDef(
      Routes.walletView,
      page: _i3.WalletView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.WalletHomeView: (data) {
      return _i4.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i2.WalletHomeView(),
        settings: data,
      );
    },
    _i3.WalletView: (data) {
      return _i4.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i3.WalletView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i5.NavigationService {
  Future<dynamic> navigateToWalletHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.walletHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWalletView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.walletView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
