// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Prediction _$PredictionFromJson(Map<String, dynamic> json) {
  return _Prediction.fromJson(json);
}

/// @nodoc
mixin _$Prediction {
  PredictionResult get result => throw _privateConstructorUsedError;
  int get numberOfBreathsLeftToDoubleTap => throw _privateConstructorUsedError;

  /// Serializes this Prediction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Prediction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PredictionCopyWith<Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionCopyWith<$Res> {
  factory $PredictionCopyWith(
          Prediction value, $Res Function(Prediction) then) =
      _$PredictionCopyWithImpl<$Res, Prediction>;
  @useResult
  $Res call({PredictionResult result, int numberOfBreathsLeftToDoubleTap});
}

/// @nodoc
class _$PredictionCopyWithImpl<$Res, $Val extends Prediction>
    implements $PredictionCopyWith<$Res> {
  _$PredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Prediction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? numberOfBreathsLeftToDoubleTap = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PredictionResult,
      numberOfBreathsLeftToDoubleTap: null == numberOfBreathsLeftToDoubleTap
          ? _value.numberOfBreathsLeftToDoubleTap
          : numberOfBreathsLeftToDoubleTap // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredictionImplCopyWith<$Res>
    implements $PredictionCopyWith<$Res> {
  factory _$$PredictionImplCopyWith(
          _$PredictionImpl value, $Res Function(_$PredictionImpl) then) =
      __$$PredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PredictionResult result, int numberOfBreathsLeftToDoubleTap});
}

/// @nodoc
class __$$PredictionImplCopyWithImpl<$Res>
    extends _$PredictionCopyWithImpl<$Res, _$PredictionImpl>
    implements _$$PredictionImplCopyWith<$Res> {
  __$$PredictionImplCopyWithImpl(
      _$PredictionImpl _value, $Res Function(_$PredictionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prediction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? numberOfBreathsLeftToDoubleTap = null,
  }) {
    return _then(_$PredictionImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PredictionResult,
      numberOfBreathsLeftToDoubleTap: null == numberOfBreathsLeftToDoubleTap
          ? _value.numberOfBreathsLeftToDoubleTap
          : numberOfBreathsLeftToDoubleTap // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredictionImpl implements _Prediction {
  const _$PredictionImpl(
      {required this.result, required this.numberOfBreathsLeftToDoubleTap});

  factory _$PredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredictionImplFromJson(json);

  @override
  final PredictionResult result;
  @override
  final int numberOfBreathsLeftToDoubleTap;

  @override
  String toString() {
    return 'Prediction(result: $result, numberOfBreathsLeftToDoubleTap: $numberOfBreathsLeftToDoubleTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.numberOfBreathsLeftToDoubleTap,
                    numberOfBreathsLeftToDoubleTap) ||
                other.numberOfBreathsLeftToDoubleTap ==
                    numberOfBreathsLeftToDoubleTap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, result, numberOfBreathsLeftToDoubleTap);

  /// Create a copy of Prediction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionImplCopyWith<_$PredictionImpl> get copyWith =>
      __$$PredictionImplCopyWithImpl<_$PredictionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredictionImplToJson(
      this,
    );
  }
}

abstract class _Prediction implements Prediction {
  const factory _Prediction(
      {required final PredictionResult result,
      required final int numberOfBreathsLeftToDoubleTap}) = _$PredictionImpl;

  factory _Prediction.fromJson(Map<String, dynamic> json) =
      _$PredictionImpl.fromJson;

  @override
  PredictionResult get result;
  @override
  int get numberOfBreathsLeftToDoubleTap;

  /// Create a copy of Prediction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PredictionImplCopyWith<_$PredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
