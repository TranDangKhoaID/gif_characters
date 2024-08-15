import 'package:json_annotation/json_annotation.dart';

part 'character_skill_model.g.dart';

@JsonSerializable()
class CharacterSkillModel {
  //int character_id;
  String? name;
  String? gif;
  String? type;
  String? describe;

  CharacterSkillModel({
    //required this.character_id,
    this.name,
    this.gif,
    this.type,
    this.describe,
  });

  factory CharacterSkillModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterSkillModelFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterSkillModelToJson(this);
}
