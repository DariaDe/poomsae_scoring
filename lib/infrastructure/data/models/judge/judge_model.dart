class JudgeModel {
  String id;
  String firstName;
  String lastName;
  String thirdName;
  String avatarUrl;
  String region;
  String city;
  String judgeCategory;
  String organization;

  JudgeModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.thirdName,
    required this.avatarUrl,
    required this.city,
    required this.region,
    required this.judgeCategory,
    required this.organization,
  });

  @override
  String toString() => "JudgeModel. id: $id"
      "firstName: $firstName"
      "lastName: $lastName"
      "thirdName: $thirdName"
      "avatarUrl: $avatarUrl"
      "region: $region"
      "city: $city"
      "organization: $organization.";
}
