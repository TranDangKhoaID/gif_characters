import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gif_skill/models/character_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseRepository {
  final _charactersCollection = FirebaseFirestore.instance;
  Future<List<CharacterModel>> getCharacters() async {
    QuerySnapshot querySnapshot = await _charactersCollection
        .collection(
          'characters',
        )
        .get();
    return querySnapshot.docs.map((doc) {
      return CharacterModel.fromJson(doc.data() as Map<String, dynamic>);
    }).toList();
  }
}
