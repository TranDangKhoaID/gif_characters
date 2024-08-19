import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gif_skill/screens/character_screen/cubit/character_cubit.dart';
import 'package:gif_skill/screens/detail_character/detail_character_screen.dart';
import 'package:gif_skill/widgets/shimmer.dart';

class CharacterScreen extends StatefulWidget {
  static BlocProvider<CharacterCubit> provider() {
    return BlocProvider(
      create: (context) => CharacterCubit(),
      child: const CharacterScreen(),
    );
  }

  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('Gif Characters'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<CharacterCubit, CharacterState>(
        buildWhen: (prev, curr) {
          return curr is GetCharacters || curr is ShowLoading;
        },
        builder: (context, state) {
          final items = state.data.characters;
          final isLoading = state.data.isLoading;
          return GridView.builder(
            padding: const EdgeInsets.all(15),
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              if (isLoading) {
                return const CircularProgressIndicator();
              }
              final model = items[index];
              return GridTile(
                child: GestureDetector(
                  onTap: () => Get.to(
                    () => DetailCharacterScreen(
                      model: model,
                    ),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: model.gif ?? '',
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
        },
      ),
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CharacterCubit>().getCharacters();
  }
}
