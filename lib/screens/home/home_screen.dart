import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif_skill/models/character_model.dart';
import 'package:gif_skill/routes.dart';
import 'package:gif_skill/screens/detail_character/detail_character_screen.dart';
import 'package:gif_skill/widgets/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gif Characters'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: characters.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: GestureDetector(
              onTap: () => Get.to(
                () => DetailCharacterScreen(
                  model: characters[index],
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: characters[index].gif!,
                fit: BoxFit.fill,
                placeholder: (context, url) => const ShimmerImage(),
                // errorWidget: (context, url, error) => Image.asset(
                //   'assets/images/error_photo.png',
                // ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          );
        },
      ),
    );
  }
}
