import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial(MainStateData()));

  /// Change tab index
  void changeTabIndex({
    required int index,
  }) {
    emit(ChangeTabIndex(state.data.copyWith(tabIndex: index)));
  }
}
