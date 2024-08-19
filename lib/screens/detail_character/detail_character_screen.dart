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
  // List<CharacterSkillModel> skills = [];
  // List<CharacterSkillModel> transfroms = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết nhân vật'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: widget.model.avatar ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) => const ShimmerImage(),
              // errorWidget: (context, url, error) => Image.asset(
              //   'assets/images/error_photo.png',
              // ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            _buildIntroduce(),
            _buildSkills(
              name: 'Kỹ năng',
              list: widget.model.skills ?? [],
            ),
            const SizedBox(height: 15),
            _buildSkills(
              name: 'Kỹ năng biến hình',
              list: widget.model.transforms ?? [],
            ),
            const SizedBox(height: 15),
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
            style: const TextStyle(
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

  Widget _buildSkills({
    required String name,
    required List<CharacterSkillModel> list,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          widget.model.skills!.isNotEmpty
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    final skill = list[index];
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
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    );
                  },
                )
              : Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  child: const Text('Không có kỹ năng nào'),
                ),
        ],
      ),
    );
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
              imageUrl: skill.gif ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) => const ShimmerImage(),
              // errorWidget: (context, url, error) => Image.asset(
              //   'assets/images/error_photo.png',
              // ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          skill.name ?? '',
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(skill.describe ?? ''),
      ],
    );
  }
}
