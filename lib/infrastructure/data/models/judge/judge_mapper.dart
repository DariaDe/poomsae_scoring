import 'package:poomsae_scoring/infrastructure/data/models/judge/judge_model.dart';

class JudgeMapper {
  String id;
  String firstName;
  String lastName;
  String thirdName;
  String avatarUrl;
  String region;
  String city;
  String judgeCategory;
  String organization;

  JudgeMapper.fromJson(Map<String, dynamic> map)
      : id = map['id'] ?? "",
        firstName = map['firstName'] ?? "",
        lastName = map['lastName'] ?? "",
        thirdName = map['thirdName'] ?? "",
        avatarUrl = map['avatarUrl'] ?? "",
        region = map['region'] ?? "",
        city = map['city'] ?? "",
        judgeCategory = map['judgeCategory'] ?? "",
        organization = map['organization'] ?? "";

  static Map<String, dynamic> toJson(JudgeModel judgeModel) => {
        'firstName': judgeModel.firstName,
        'lastName': judgeModel.lastName,
        'thirdName': judgeModel.thirdName,
        'avatarUrl': judgeModel.avatarUrl,
        'region': judgeModel.region,
        'city': judgeModel.city,
        'judgeCategory': judgeModel.judgeCategory,
        'organization': judgeModel.organization,
      };

  JudgeModel toModel() {
    return JudgeModel(
        id: id,
        firstName: firstName,
        lastName: lastName,
        thirdName: thirdName,
        avatarUrl: avatarUrl,
        region: region,
        city: city,
        judgeCategory: judgeCategory,
        organization: organization);
  }
}
