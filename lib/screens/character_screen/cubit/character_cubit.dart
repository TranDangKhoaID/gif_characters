import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gif_skill/locator.dart';
import 'package:gif_skill/models/character_model.dart';
import 'package:gif_skill/repositories/data_repository.dart';

part 'character_state.dart';
part 'character_cubit.freezed.dart';

class CharacterCubit extends Cubit<CharacterState> {
  /// MARK: - Initials;
  final dataRepository = locator<DataRepository>();

  CharacterCubit() : super(const CharacterState.initial(CharacterStateData()));

  /// characters
  Future<void> getCharacters() async {
    try {
      emit(ShowLoading(state.data.copyWith(isLoading: true)));
      //final characterResponse = await dataRepository.getCharacters();
      final characters = await dataRepository.getCharacters();
      emit(GetCharacters(state.data.copyWith(characters: characters)));
      //debugPrint('hê ${characterResponse.characters}');
    } catch (e) {
      debugPrint('Error get characters ==> $e');
    } finally {
      emit(ShowLoading(state.data.copyWith(isLoading: false)));
    }
  }
}
