import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif_skill/locator.dart';
import 'package:gif_skill/models/character_model.dart';
import 'package:gif_skill/repositories/firebase_repository.dart';

class HomeController extends GetxController {
  final _firebaseRes = locator<FirebaseRepository>();

  Future<List<CharacterModel>> getCharacters() async {
    try {
      return await _firebaseRes.getCharacters();
    } catch (e) {
      debugPrint('Error get charaters ==> $e');
      return [];
    }
  }
}
