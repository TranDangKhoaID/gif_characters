// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      gif: json['gif'] as String?,
      avatar: json['avatar'] as String?,
      description: json['description'] as String?,
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => CharacterSkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      transforms: (json['transforms'] as List<dynamic>?)
          ?.map((e) => CharacterSkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gif': instance.gif,
      'avatar': instance.avatar,
      'description': instance.description,
      'skills': instance.skills,
      'transforms': instance.transforms,
    };
