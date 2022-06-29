import 'package:poomsae_scoring/infrastructure/data/models/judge/judge_mapper.dart';
import 'package:poomsae_scoring/infrastructure/data/models/judge/judge_model.dart';

import '../../infrastructure/repositories/judges_repository.dart';
import 'network_service/judges_api_service.dart';

class JudgesApi extends JudgesRepository {
  late final JudgesService _judgesService;

  JudgesApi() {
    _judgesService = JudgesService();
  }

  @override
  Stream<List<JudgeModel>> getJudges() {
    var response = _judgesService.getJudges();
    var result = response.map((snapshot) => snapshot.docs
        .map((doc) => JudgeMapper.fromJson(doc.data()).toModel())
        .toList());
    return result;
  }
}
