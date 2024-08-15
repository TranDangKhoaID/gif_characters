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
    description:
        'Son Goku (孫悟空そんごくう (Tôn Ngộ Không) Son Gokū?), tên khai sinh là Kakarot (カカロット Kakarotto?) là nhân vật chính trong series manga Dragon Ball của Toriyama Akira. Cậu là cháu trai nuôi của ông nội Gohan, chồng của Chi-Chi, bố của Gohan và Goten, ông nội của Pan và trong Dragon Ball GT là cụ cố của Goku Jr. Thầy dạy của cậu có Quy lão, Kaio và Whis. Son Goku được đánh giá là nhân vật giả tưởng mạnh nhất mọi thời đại.',
    skills: [
      CharacterSkillModel(
        name: 'Giới Vương Quyền',
        gif: 'https://media.tenor.com/MiYGnIcUIisAAAAC/goku-kaio.gif',
        type: 'skill',
        describe:
            'kỹ thuật đẩy khí trong cơ thể giúp tăng nhiều lần sức mạnh, sức bền, tốc độ và phản xạ bản thân đổi lại là áp lực như nhẹ thì hao tổn nội lực với căng cơ, nặng thì tàn phế',
      ),
      CharacterSkillModel(
        name: 'Nguyên Khí Ngọc',
        gif:
            'https://th.bing.com/th/id/R.f2595ceedc68d4b090ade70dcf7fa53c?rik=DWaWm0IBBzEHZA&pid=ImgRaw&r=0',
        type: 'skill',
        describe:
            'Goku sẽ đưa hai tay lên trời, giao tiếp với thiên nhiên, vạn vật xung quanh để mượn sức mạnh từ họ, tạo nên quả cầu khí với sức mạnh khổng lồ vô song.',
      ),
      CharacterSkillModel(
        name: 'Tam Quy Công',
        gif:
            'https://media1.tenor.com/images/e021e4a9bf146f7e4042f37da18286a4/tenor.gif?itemid=11776733',
        type: 'skill',
      ),
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
      CharacterSkillModel(
        name: 'SSJ1',
        gif:
            'https://i.pinimg.com/originals/a1/9f/3b/a19f3b72fa903ebd7fb64553075a26ac.gif',
        type: 'transform',
      ),
      CharacterSkillModel(
        name: 'SSJ2',
        gif:
            'https://i.pinimg.com/originals/ce/3f/0b/ce3f0b9201c9424db5923fa71637e952.gif',
        type: 'transform',
      ),
      CharacterSkillModel(
        name: 'SSJ3',
        gif:
            'https://i.pinimg.com/originals/bd/26/d5/bd26d562584ec017829e49febc1d8a7d.gif',
        type: 'transform',
      ),
      CharacterSkillModel(
        name: 'SSJ4',
        gif:
            'https://i.pinimg.com/originals/4f/27/b2/4f27b247e4be74a8f3595d3d604687da.gif',
        type: 'transform',
      ),
      CharacterSkillModel(
        name: 'SSJGod',
        gif:
            'https://i.pinimg.com/originals/47/81/4b/47814b358d445cc0b6454b6325215564.gif',
        type: 'transform',
      ),
      CharacterSkillModel(
        name: 'SSJBlue',
        gif:
            'https://i.pinimg.com/originals/f2/74/53/f274537087bf0fef20fe24b6bb9f5cdc.gif',
        type: 'transform',
      ),
      CharacterSkillModel(
        name: 'UI',
        gif:
            'https://i.pinimg.com/originals/f0/66/57/f06657ea7a56f1b397a340a2c789a19f.gif',
        type: 'transform',
      ),
    ],
  ),
];
