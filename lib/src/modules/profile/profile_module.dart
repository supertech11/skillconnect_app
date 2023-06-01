import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:get/get.dart';

import 'package:skillconnect_app/src/modules/module.dart';

import 'package:skillconnect_app/src/modules/profile/presentation/screens/profile_screen.dart';

class ProfileModule extends Module {
  static final profileScreen = GetPage(
    name: '/profilescreen',
    page: () => const ProfileScreen(),
  );

  @override
  void register(List<GetPage> routes) {
    routes.addAll([
      profileScreen,
    ]);
  }
}
