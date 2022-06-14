import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:poomsae_scoring/infrastructure/navigation/bindings/controllers/enter_court.controller.binding.dart';

import '../../config.dart';
import '../../presentation/enter_court/enter_court.screen.dart';
import '../../presentation/home/home.screen.dart';
import '../../presentation/judges/judges.screen.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.ENTER_COURT,
      page: () => EnterCourtScreen(),
      binding: EnterCourtControllerBinding(),
    ),
    GetPage(
      name: Routes.JUDGES,
      page: () => JudgesScreen(),
      binding: JudgesControllerBinding(),
    ),
  ];
}
