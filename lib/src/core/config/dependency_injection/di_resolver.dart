import 'package:skillconnect_app/src/core/navigation/app_router.dart';
import 'package:get/get.dart';

class DI {
  const DI._();

  static AppRouter get resolveRouter => AppRouter.it;

  static T resolve<T>() => Get.find();
}
