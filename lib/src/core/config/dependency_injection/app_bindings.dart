import 'package:skillconnect_app/src/core/config/dependency_injection/di.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  final List<Bindings> _bindings = [];

  @override
  void dependencies() {
    DISetup.init();
    for (final element in _bindings) {
      element.dependencies();
    }
  }
}
