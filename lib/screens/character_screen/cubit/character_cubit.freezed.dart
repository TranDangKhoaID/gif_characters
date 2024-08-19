// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterStateData {
  List<CharacterModel> get characters => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateDataCopyWith<CharacterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateDataCopyWith<$Res> {
  factory $CharacterStateDataCopyWith(
          CharacterStateData value, $Res Function(CharacterStateData) then) =
      _$CharacterStateDataCopyWithImpl<$Res, CharacterStateData>;
  @useResult
  $Res call({List<CharacterModel> characters, bool isLoading});
}

/// @nodoc
class _$CharacterStateDataCopyWithImpl<$Res, $Val extends CharacterStateData>
    implements $CharacterStateDataCopyWith<$Res> {
  _$CharacterStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterStateDataImplCopyWith<$Res>
    implements $CharacterStateDataCopyWith<$Res> {
  factory _$$CharacterStateDataImplCopyWith(_$CharacterStateDataImpl value,
          $Res Function(_$CharacterStateDataImpl) then) =
      __$$CharacterStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CharacterModel> characters, bool isLoading});
}

/// @nodoc
class __$$CharacterStateDataImplCopyWithImpl<$Res>
    extends _$CharacterStateDataCopyWithImpl<$Res, _$CharacterStateDataImpl>
    implements _$$CharacterStateDataImplCopyWith<$Res> {
  __$$CharacterStateDataImplCopyWithImpl(_$CharacterStateDataImpl _value,
      $Res Function(_$CharacterStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? isLoading = null,
  }) {
    return _then(_$CharacterStateDataImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharacterStateDataImpl implements _CharacterStateData {
  const _$CharacterStateDataImpl(
      {final List<CharacterModel> characters = const [],
      this.isLoading = false})
      : _characters = characters;

  final List<CharacterModel> _characters;
  @override
  @JsonKey()
  List<CharacterModel> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CharacterStateData(characters: $characters, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateDataImplCopyWith<_$CharacterStateDataImpl> get copyWith =>
      __$$CharacterStateDataImplCopyWithImpl<_$CharacterStateDataImpl>(
          this, _$identity);
}

abstract class _CharacterStateData implements CharacterStateData {
  const factory _CharacterStateData(
      {final List<CharacterModel> characters,
      final bool isLoading}) = _$CharacterStateDataImpl;

  @override
  List<CharacterModel> get characters;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$CharacterStateDataImplCopyWith<_$CharacterStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterState {
  CharacterStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharacterStateData data) initial,
    required TResult Function(CharacterStateData data) getCharacters,
    required TResult Function(CharacterStateData data) showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateData data)? initial,
    TResult? Function(CharacterStateData data)? getCharacters,
    TResult? Function(CharacterStateData data)? showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharacterStateData data)? initial,
    TResult Function(CharacterStateData data)? getCharacters,
    TResult Function(CharacterStateData data)? showLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCharacters value) getCharacters,
    required TResult Function(ShowLoading value) showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCharacters value)? getCharacters,
    TResult? Function(ShowLoading value)? showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCharacters value)? getCharacters,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call({CharacterStateData data});

  $CharacterStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterStateDataCopyWith<$Res> get data {
    return $CharacterStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterStateData data});

  @override
  $CharacterStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$InitialImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterStateData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.data);

  @override
  final CharacterStateData data;

  @override
  String toString() {
    return 'CharacterState.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharacterStateData data) initial,
    required TResult Function(CharacterStateData data) getCharacters,
    required TResult Function(CharacterStateData data) showLoading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateData data)? initial,
    TResult? Function(CharacterStateData data)? getCharacters,
    TResult? Function(CharacterStateData data)? showLoading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharacterStateData data)? initial,
    TResult Function(CharacterStateData data)? getCharacters,
    TResult Function(CharacterStateData data)? showLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCharacters value) getCharacters,
    required TResult Function(ShowLoading value) showLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCharacters value)? getCharacters,
    TResult? Function(ShowLoading value)? showLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCharacters value)? getCharacters,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CharacterState {
  const factory _Initial(final CharacterStateData data) = _$InitialImpl;

  @override
  CharacterStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCharactersImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$GetCharactersImplCopyWith(
          _$GetCharactersImpl value, $Res Function(_$GetCharactersImpl) then) =
      __$$GetCharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterStateData data});

  @override
  $CharacterStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetCharactersImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$GetCharactersImpl>
    implements _$$GetCharactersImplCopyWith<$Res> {
  __$$GetCharactersImplCopyWithImpl(
      _$GetCharactersImpl _value, $Res Function(_$GetCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetCharactersImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterStateData,
    ));
  }
}

/// @nodoc

class _$GetCharactersImpl implements GetCharacters {
  const _$GetCharactersImpl(this.data);

  @override
  final CharacterStateData data;

  @override
  String toString() {
    return 'CharacterState.getCharacters(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCharactersImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      __$$GetCharactersImplCopyWithImpl<_$GetCharactersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharacterStateData data) initial,
    required TResult Function(CharacterStateData data) getCharacters,
    required TResult Function(CharacterStateData data) showLoading,
  }) {
    return getCharacters(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateData data)? initial,
    TResult? Function(CharacterStateData data)? getCharacters,
    TResult? Function(CharacterStateData data)? showLoading,
  }) {
    return getCharacters?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharacterStateData data)? initial,
    TResult Function(CharacterStateData data)? getCharacters,
    TResult Function(CharacterStateData data)? showLoading,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCharacters value) getCharacters,
    required TResult Function(ShowLoading value) showLoading,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCharacters value)? getCharacters,
    TResult? Function(ShowLoading value)? showLoading,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCharacters value)? getCharacters,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class GetCharacters implements CharacterState {
  const factory GetCharacters(final CharacterStateData data) =
      _$GetCharactersImpl;

  @override
  CharacterStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowLoadingImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$ShowLoadingImplCopyWith(
          _$ShowLoadingImpl value, $Res Function(_$ShowLoadingImpl) then) =
      __$$ShowLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterStateData data});

  @override
  $CharacterStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowLoadingImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$ShowLoadingImpl>
    implements _$$ShowLoadingImplCopyWith<$Res> {
  __$$ShowLoadingImplCopyWithImpl(
      _$ShowLoadingImpl _value, $Res Function(_$ShowLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowLoadingImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterStateData,
    ));
  }
}

/// @nodoc

class _$ShowLoadingImpl implements ShowLoading {
  const _$ShowLoadingImpl(this.data);

  @override
  final CharacterStateData data;

  @override
  String toString() {
    return 'CharacterState.showLoading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLoadingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowLoadingImplCopyWith<_$ShowLoadingImpl> get copyWith =>
      __$$ShowLoadingImplCopyWithImpl<_$ShowLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharacterStateData data) initial,
    required TResult Function(CharacterStateData data) getCharacters,
    required TResult Function(CharacterStateData data) showLoading,
  }) {
    return showLoading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateData data)? initial,
    TResult? Function(CharacterStateData data)? getCharacters,
    TResult? Function(CharacterStateData data)? showLoading,
  }) {
    return showLoading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharacterStateData data)? initial,
    TResult Function(CharacterStateData data)? getCharacters,
    TResult Function(CharacterStateData data)? showLoading,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCharacters value) getCharacters,
    required TResult Function(ShowLoading value) showLoading,
  }) {
    return showLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCharacters value)? getCharacters,
    TResult? Function(ShowLoading value)? showLoading,
  }) {
    return showLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCharacters value)? getCharacters,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading(this);
    }
    return orElse();
  }
}

abstract class ShowLoading implements CharacterState {
  const factory ShowLoading(final CharacterStateData data) = _$ShowLoadingImpl;

  @override
  CharacterStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowLoadingImplCopyWith<_$ShowLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
