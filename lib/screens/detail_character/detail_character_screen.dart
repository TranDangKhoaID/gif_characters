import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gif_skill/common/share_color.dart';
import 'package:gif_skill/models/character_model.dart';
import 'package:gif_skill/models/character_skill_model.dart';
import 'package:gif_skill/widgets/shimmer.dart';

class DetailCharacterScreen extends StatefulWidget {
  final CharacterModel model;
  const DetailCharacterScreen({
    super.key,
    required this.model,
  });

  @override
  State<DetailCharacterScreen> createState() => _DetailCharacterScreenState();
}

class _DetailCharacterScreenState extends State<DetailCharacterScreen> {
  List<CharacterSkillModel> skills = [];
  List<CharacterSkillModel> transfroms = [];

  @override
  void initState() {
    skills = widget.model.skills!
        .where(
          (skill) => skill.type == 'skill',
        )
        .toList();
    transfroms = widget.model.skills!
        .where(
          (skill) => skill.type == 'transform',
        )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết nhân vật'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/bg_gif/songoku_bg.gif',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model.name!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Son Goku (孫悟空そんごくう (Tôn Ngộ Không) Son Gokū?), tên khai sinh là Kakarot (カカロット Kakarotto?) là nhân vật chính trong series manga Dragon Ball của Toriyama Akira. Cậu là cháu trai nuôi của ông nội Gohan, chồng của Chi-Chi, bố của Gohan và Goten, ông nội của Pan và trong Dragon Ball GT là cụ cố của Goku Jr. Thầy dạy của cậu có Quy lão, Kaio và Whis. Son Goku được đánh giá là nhân vật giả tưởng mạnh nhất mọi thời đại.',
                  ),
                ],
              ),
            ),
            _buildSkills(),
            _buildTransform(),
          ],
        ),
      ),
    );
  }

  Widget _buildSkills() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kỹ năng',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          skills.isNotEmpty
              ? SizedBox(
                  height: 250,
                  child: GridView.builder(
                    itemCount: skills.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      final skill = skills[index];
                      return GridTile(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: ShareColors.kPrimaryColor,
                                width: 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              textAlign: TextAlign.center,
                              skill.name.toString(),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  child: Text('Không có kỹ năng nào'),
                ),
        ],
      ),
    );
  }

  Widget _buildTransform() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kỹ năng biến hình',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          transfroms.isNotEmpty
              ? SizedBox(
                  height: 250,
                  child: GridView.builder(
                    itemCount: transfroms.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      final skill = transfroms[index];
                      return GridTile(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: ShareColors.kPrimaryColor,
                                width: 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              textAlign: TextAlign.center,
                              skill.name.toString(),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  child: Text('Không có kỹ năng biến hình'),
                ),
        ],
      ),
    );
  }
}
