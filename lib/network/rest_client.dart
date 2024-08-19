import 'package:dio/dio.dart';
import 'package:gif_skill/models/character_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  /// MARK: - Initials;
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/rest/v1/characters?select=*')
  Future<List<CharacterModel>> getCharacters();
}
