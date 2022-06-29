import 'package:poomsae_scoring/infrastructure/data/models/judge/judge_model.dart';

abstract class JudgesRepository {
  Stream<List<JudgeModel>> getJudges();
}
