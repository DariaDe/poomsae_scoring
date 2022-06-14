import 'package:get/get.dart';

import '../../../../presentation/enter_court/controllers/enter_court.controller.dart';

class EnterCourtControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnterCourtController>(
      () => EnterCourtController(),
    );
  }
}
