part of 'character_cubit.dart';

@freezed
class CharacterStateData with _$CharacterStateData {
  const factory CharacterStateData({
    @Default([]) List<CharacterModel> characters,
    @Default(false) bool isLoading,
  }) = _CharacterStateData;
}

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial(CharacterStateData data) = _Initial;
  const factory CharacterState.getCharacters(CharacterStateData data) =
      GetCharacters;
  const factory CharacterState.showLoading(CharacterStateData data) =
      ShowLoading;
}
