import 'package:get/get.dart';
import 'package:poomsae_scoring/infrastructure/data/models/judge_model.dart';

class JudgesController extends GetxController {
  //todo remove
  var judgesList = [
    JudgeModel(
      id: 0,
      firstName: 'Дарья',
      lastName: 'Денисова',
      thirdName: 'Олеговна',
      avatarUrl: 'assets/images/woman_2.png',
      city: 'Королев',
      region: 'Московская область',
      judgeCategory: '3 категория',
      organization: 'СШОР "Металлист',
    ),
    JudgeModel(
      id: 0,
      firstName: 'Мария',
      lastName: 'Холоднова',
      thirdName: 'Алексеевна',
      avatarUrl: 'assets/images/woman.png',
      city: 'Королев',
      region: 'Московская область',
      judgeCategory: '3 категория',
      organization: 'СШОР "Металлист',
    ),
    JudgeModel(
      id: 0,
      firstName: 'Петр',
      lastName: 'Еремин',
      thirdName: 'Вадимович',
      avatarUrl: 'assets/images/man_2.png',
      city: 'Королев',
      region: 'Московская область',
      judgeCategory: '3 категория',
      organization: 'СШОР "Металлист',
    ),
    JudgeModel(
      id: 0,
      firstName: 'Алина',
      lastName: 'Заикина',
      thirdName: 'Сергеевна',
      avatarUrl: 'assets/images/woman_2.png',
      city: 'Королев',
      region: 'Московская область',
      judgeCategory: '3 категория',
      organization: 'СШОР "Металлист',
    ),
    JudgeModel(
      id: 0,
      firstName: 'Олег',
      lastName: 'Денисов',
      thirdName: 'Владимирович',
      avatarUrl: 'assets/images/man.png',
      city: 'Королев',
      region: 'Московская область',
      judgeCategory: '3 категория',
      organization: 'СШОР "Металлист',
    ),
  ];

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
}
