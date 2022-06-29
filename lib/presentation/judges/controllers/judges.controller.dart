import 'package:get/get.dart';
import 'package:poomsae_scoring/infrastructure/data/models/judge/judge_model.dart';

import '../../../data/api/judges_api.dart';
import '../../../di/injector_provider.dart';

class JudgesController extends GetxController {
  final JudgesApi _judgesApi = injector<JudgesApi>();

  var selectedJudge = Rxn<JudgeModel>();

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

  void changeSelectedJudge(JudgeModel newSelectedJudge) {
    selectedJudge.value = newSelectedJudge;
  }

  Stream<List<JudgeModel>> getJudges() {
    return _judgesApi.getJudges();
  }
}
