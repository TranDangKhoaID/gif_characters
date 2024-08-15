import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gif_skill/common/dialog_helper.dart';
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
            _buildIntroduce(),
            _buildSkills(),
            SizedBox(height: 15),
            _buildTransform(),
          ],
        ),
      ),
    );
  }

  Padding _buildIntroduce() {
    return Padding(
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
            widget.model.description!,
          ),
        ],
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
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: skills.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    final skill = skills[index];
                    return GridTile(
                      child: GestureDetector(
                        onTap: () {
                          DialogHelper.showWidgetOkDialog(
                            body: _buildDialogDetailSkill(skill),
                            context: context,
                          );
                        },
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
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: transfroms.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    final skill = transfroms[index];
                    return GridTile(
                      child: GestureDetector(
                        onTap: () {
                          DialogHelper.showWidgetOkDialog(
                            body: _buildDialogDetailSkill(skill),
                            context: context,
                          );
                        },
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

Widget _buildDialogDetailSkill(CharacterSkillModel skill) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: ShareColors.kPrimaryColor,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: CachedNetworkImage(
            imageUrl: skill.gif!,
            fit: BoxFit.cover,
            placeholder: (context, url) => const ShimmerImage(),
            // errorWidget: (context, url, error) => Image.asset(
            //   'assets/images/error_photo.png',
            // ),
            errorWidget: (context, url, error) => Icon(
              Icons.error,
            ),
          ),
        ),
      ),
      SizedBox(height: 5),
      Text(
        skill.name!,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(skill.describe ?? ''),
    ],
  );
}
