// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterSkillModel _$CharacterSkillModelFromJson(Map<String, dynamic> json) =>
    CharacterSkillModel(
      name: json['name'] as String?,
      gif: json['gif'] as String?,
      type: json['type'] as String?,
      describe: json['describe'] as String?,
    );

Map<String, dynamic> _$CharacterSkillModelToJson(
        CharacterSkillModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gif': instance.gif,
      'type': instance.type,
      'describe': instance.describe,
    };
