// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meditation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meditation _$MeditationFromJson(Map<String, dynamic> json) {
  return _Meditation.fromJson(json);
}

/// @nodoc
mixin _$Meditation {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this Meditation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meditation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeditationCopyWith<Meditation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeditationCopyWith<$Res> {
  factory $MeditationCopyWith(
          Meditation value, $Res Function(Meditation) then) =
      _$MeditationCopyWithImpl<$Res, Meditation>;
  @useResult
  $Res call({String url, String title, String artist, String imagePath});
}

/// @nodoc
class _$MeditationCopyWithImpl<$Res, $Val extends Meditation>
    implements $MeditationCopyWith<$Res> {
  _$MeditationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meditation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? artist = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeditationImplCopyWith<$Res>
    implements $MeditationCopyWith<$Res> {
  factory _$$MeditationImplCopyWith(
          _$MeditationImpl value, $Res Function(_$MeditationImpl) then) =
      __$$MeditationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String title, String artist, String imagePath});
}

/// @nodoc
class __$$MeditationImplCopyWithImpl<$Res>
    extends _$MeditationCopyWithImpl<$Res, _$MeditationImpl>
    implements _$$MeditationImplCopyWith<$Res> {
  __$$MeditationImplCopyWithImpl(
      _$MeditationImpl _value, $Res Function(_$MeditationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meditation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? artist = null,
    Object? imagePath = null,
  }) {
    return _then(_$MeditationImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeditationImpl implements _Meditation {
  const _$MeditationImpl(
      {required this.url,
      required this.title,
      required this.artist,
      required this.imagePath});

  factory _$MeditationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeditationImplFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final String artist;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'Meditation(url: $url, title: $title, artist: $artist, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeditationImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, title, artist, imagePath);

  /// Create a copy of Meditation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeditationImplCopyWith<_$MeditationImpl> get copyWith =>
      __$$MeditationImplCopyWithImpl<_$MeditationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeditationImplToJson(
      this,
    );
  }
}

abstract class _Meditation implements Meditation {
  const factory _Meditation(
      {required final String url,
      required final String title,
      required final String artist,
      required final String imagePath}) = _$MeditationImpl;

  factory _Meditation.fromJson(Map<String, dynamic> json) =
      _$MeditationImpl.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  String get artist;
  @override
  String get imagePath;

  /// Create a copy of Meditation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeditationImplCopyWith<_$MeditationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
