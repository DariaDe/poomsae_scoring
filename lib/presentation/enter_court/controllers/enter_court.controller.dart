import 'package:get/get.dart';
import 'package:poomsae_scoring/infrastructure/navigation/routes.dart';

class EnterCourtController extends GetxController {
  //TODO: Implement EnterCourtController

  ///Variable for saving chosen court number
  var courtRadioValue = 1.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  ///Method for changing court number
  void changeCourt(int newValue) {
    courtRadioValue.value = newValue;
  }

  ///Method for sending court number to back
  void sendCourt() {
    print('Chosen court number is ${courtRadioValue.value}');
    print('sendCourt is CALLED!');
    Get.toNamed(Routes.JUDGES);
  }
}
