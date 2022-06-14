import 'package:get/get.dart';

import '../../../../presentation/judges/controllers/judges.controller.dart';

class JudgesControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JudgesController>(
      () => JudgesController(),
    );
  }
}
