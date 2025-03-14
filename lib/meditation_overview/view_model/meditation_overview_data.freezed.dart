// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meditation_overview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeditationOverviewData _$MeditationOverviewDataFromJson(
    Map<String, dynamic> json) {
  return _MeditationOverviewData.fromJson(json);
}

/// @nodoc
mixin _$MeditationOverviewData {
  String get title => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  List<Meditation> get meditations => throw _privateConstructorUsedError;

  /// Serializes this MeditationOverviewData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeditationOverviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeditationOverviewDataCopyWith<MeditationOverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeditationOverviewDataCopyWith<$Res> {
  factory $MeditationOverviewDataCopyWith(MeditationOverviewData value,
          $Res Function(MeditationOverviewData) then) =
      _$MeditationOverviewDataCopyWithImpl<$Res, MeditationOverviewData>;
  @useResult
  $Res call({String title, String imagePath, List<Meditation> meditations});
}

/// @nodoc
class _$MeditationOverviewDataCopyWithImpl<$Res,
        $Val extends MeditationOverviewData>
    implements $MeditationOverviewDataCopyWith<$Res> {
  _$MeditationOverviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeditationOverviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imagePath = null,
    Object? meditations = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      meditations: null == meditations
          ? _value.meditations
          : meditations // ignore: cast_nullable_to_non_nullable
              as List<Meditation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeditationOverviewDataImplCopyWith<$Res>
    implements $MeditationOverviewDataCopyWith<$Res> {
  factory _$$MeditationOverviewDataImplCopyWith(
          _$MeditationOverviewDataImpl value,
          $Res Function(_$MeditationOverviewDataImpl) then) =
      __$$MeditationOverviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imagePath, List<Meditation> meditations});
}

/// @nodoc
class __$$MeditationOverviewDataImplCopyWithImpl<$Res>
    extends _$MeditationOverviewDataCopyWithImpl<$Res,
        _$MeditationOverviewDataImpl>
    implements _$$MeditationOverviewDataImplCopyWith<$Res> {
  __$$MeditationOverviewDataImplCopyWithImpl(
      _$MeditationOverviewDataImpl _value,
      $Res Function(_$MeditationOverviewDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeditationOverviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imagePath = null,
    Object? meditations = null,
  }) {
    return _then(_$MeditationOverviewDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      meditations: null == meditations
          ? _value._meditations
          : meditations // ignore: cast_nullable_to_non_nullable
              as List<Meditation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeditationOverviewDataImpl implements _MeditationOverviewData {
  const _$MeditationOverviewDataImpl(
      {required this.title,
      required this.imagePath,
      required final List<Meditation> meditations})
      : _meditations = meditations;

  factory _$MeditationOverviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeditationOverviewDataImplFromJson(json);

  @override
  final String title;
  @override
  final String imagePath;
  final List<Meditation> _meditations;
  @override
  List<Meditation> get meditations {
    if (_meditations is EqualUnmodifiableListView) return _meditations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meditations);
  }

  @override
  String toString() {
    return 'MeditationOverviewData(title: $title, imagePath: $imagePath, meditations: $meditations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeditationOverviewDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._meditations, _meditations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, imagePath,
      const DeepCollectionEquality().hash(_meditations));

  /// Create a copy of MeditationOverviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeditationOverviewDataImplCopyWith<_$MeditationOverviewDataImpl>
      get copyWith => __$$MeditationOverviewDataImplCopyWithImpl<
          _$MeditationOverviewDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeditationOverviewDataImplToJson(
      this,
    );
  }
}

abstract class _MeditationOverviewData implements MeditationOverviewData {
  const factory _MeditationOverviewData(
          {required final String title,
          required final String imagePath,
          required final List<Meditation> meditations}) =
      _$MeditationOverviewDataImpl;

  factory _MeditationOverviewData.fromJson(Map<String, dynamic> json) =
      _$MeditationOverviewDataImpl.fromJson;

  @override
  String get title;
  @override
  String get imagePath;
  @override
  List<Meditation> get meditations;

  /// Create a copy of MeditationOverviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeditationOverviewDataImplCopyWith<_$MeditationOverviewDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
