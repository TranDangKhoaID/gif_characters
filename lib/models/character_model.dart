import 'package:gif_skill/models/character_skill_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  int id;
  String? name;
  String? gif;
  String? avatar;
  String? description;
  List<CharacterSkillModel>? skills;

  CharacterModel({
    required this.id,
    this.name,
    this.gif,
    this.avatar,
    this.description,
    this.skills,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}

List<CharacterModel> characters = [
  CharacterModel(
    id: 1,
    name: 'Son Goku',
    gif:
        'https://66.media.tumblr.com/4f6e8d2395f3b913a67613ba6101d568/tumblr_mpvv1jre3q1rfjowdo1_500.gif',
    avatar:
        'https://upload.wikimedia.org/wikipedia/vi/thumb/a/af/Son_Goku_YoungAdult.PNG/300px-Son_Goku_YoungAdult.PNG',
    description: 'Hiho',
    skills: [
      CharacterSkillModel(
          name: 'Giới Vương Quyền',
          gif: 'https://media.tenor.com/MiYGnIcUIisAAAAC/goku-kaio.gif',
          type: 'skill'),
      CharacterSkillModel(
          name: 'Nguyên Khí Ngọc',
          gif:
              'https://th.bing.com/th/id/R.f2595ceedc68d4b090ade70dcf7fa53c?rik=DWaWm0IBBzEHZA&pid=ImgRaw&r=0',
          type: 'skill'),
      CharacterSkillModel(
          name: 'Tam Quy Công',
          gif:
              'https://media1.tenor.com/images/e021e4a9bf146f7e4042f37da18286a4/tenor.gif?itemid=11776733',
          type: 'skill'),
      CharacterSkillModel(
        name: 'Thuấn gian Di động',
        gif: 'https://i.imgur.com/8JhNaJ5.gif/goku-instant-transmission.gif',
        type: 'skill',
      ),
      CharacterSkillModel(
        name: 'Dragon Fist',
        gif:
            'https://th.bing.com/th/id/R.1d3d0b450e5794011936f79078c0a113?rik=BDBLEw%2bfPpOrYw&riu=http%3a%2f%2fpa1.narvii.com%2f5894%2fac5975fcbd0cd251a81500d8312c5dfc3eb28598_hq.gif&ehk=xc2xDxk%2bixVF%2bdcvCq8KA1D0TLQQitgoH4yUIRieAuA%3d&risl=&pid=ImgRaw&r=0',
        type: 'skill',
      ),
    ],
  ),
];
