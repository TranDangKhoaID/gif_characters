import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif_skill/models/character_model.dart';
import 'package:gif_skill/routes.dart';
import 'package:gif_skill/screens/detail_character/detail_character_screen.dart';
import 'package:gif_skill/screens/home/home_controller.dart';
import 'package:gif_skill/widgets/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gif Characters'),
          centerTitle: true,
          elevation: 0,
        ),
        body: FutureBuilder(
          future: _controller.getCharacters(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: snapshot.data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  final model = snapshot.data![index];
                  return GridTile(
                    child: GestureDetector(
                      onTap: () => Get.to(
                        () => DetailCharacterScreen(
                          model: model,
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
              );
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Lỗi dữ liểu máy chủ'));
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
