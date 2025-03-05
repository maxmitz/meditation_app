// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breathing_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreathingGameState _$BreathingGameStateFromJson(Map<String, dynamic> json) {
  return _BreathingGameState.fromJson(json);
}

/// @nodoc
mixin _$BreathingGameState {
  List<Prediction> get results => throw _privateConstructorUsedError;
  int get numberOfBreathsToTapTwice => throw _privateConstructorUsedError;
  bool get showResults => throw _privateConstructorUsedError;
  Duration get meditationDuration => throw _privateConstructorUsedError;

  /// Serializes this BreathingGameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BreathingGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreathingGameStateCopyWith<BreathingGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreathingGameStateCopyWith<$Res> {
  factory $BreathingGameStateCopyWith(
          BreathingGameState value, $Res Function(BreathingGameState) then) =
      _$BreathingGameStateCopyWithImpl<$Res, BreathingGameState>;
  @useResult
  $Res call(
      {List<Prediction> results,
      int numberOfBreathsToTapTwice,
      bool showResults,
      Duration meditationDuration});
}

/// @nodoc
class _$BreathingGameStateCopyWithImpl<$Res, $Val extends BreathingGameState>
    implements $BreathingGameStateCopyWith<$Res> {
  _$BreathingGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreathingGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? numberOfBreathsToTapTwice = null,
    Object? showResults = null,
    Object? meditationDuration = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      numberOfBreathsToTapTwice: null == numberOfBreathsToTapTwice
          ? _value.numberOfBreathsToTapTwice
          : numberOfBreathsToTapTwice // ignore: cast_nullable_to_non_nullable
              as int,
      showResults: null == showResults
          ? _value.showResults
          : showResults // ignore: cast_nullable_to_non_nullable
              as bool,
      meditationDuration: null == meditationDuration
          ? _value.meditationDuration
          : meditationDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreathingGameStateImplCopyWith<$Res>
    implements $BreathingGameStateCopyWith<$Res> {
  factory _$$BreathingGameStateImplCopyWith(_$BreathingGameStateImpl value,
          $Res Function(_$BreathingGameStateImpl) then) =
      __$$BreathingGameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Prediction> results,
      int numberOfBreathsToTapTwice,
      bool showResults,
      Duration meditationDuration});
}

/// @nodoc
class __$$BreathingGameStateImplCopyWithImpl<$Res>
    extends _$BreathingGameStateCopyWithImpl<$Res, _$BreathingGameStateImpl>
    implements _$$BreathingGameStateImplCopyWith<$Res> {
  __$$BreathingGameStateImplCopyWithImpl(_$BreathingGameStateImpl _value,
      $Res Function(_$BreathingGameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreathingGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? numberOfBreathsToTapTwice = null,
    Object? showResults = null,
    Object? meditationDuration = null,
  }) {
    return _then(_$BreathingGameStateImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      numberOfBreathsToTapTwice: null == numberOfBreathsToTapTwice
          ? _value.numberOfBreathsToTapTwice
          : numberOfBreathsToTapTwice // ignore: cast_nullable_to_non_nullable
              as int,
      showResults: null == showResults
          ? _value.showResults
          : showResults // ignore: cast_nullable_to_non_nullable
              as bool,
      meditationDuration: null == meditationDuration
          ? _value.meditationDuration
          : meditationDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreathingGameStateImpl implements _BreathingGameState {
  _$BreathingGameStateImpl(
      {required final List<Prediction> results,
      required this.numberOfBreathsToTapTwice,
      required this.showResults,
      required this.meditationDuration})
      : _results = results;

  factory _$BreathingGameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreathingGameStateImplFromJson(json);

  final List<Prediction> _results;
  @override
  List<Prediction> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int numberOfBreathsToTapTwice;
  @override
  final bool showResults;
  @override
  final Duration meditationDuration;

  @override
  String toString() {
    return 'BreathingGameState(results: $results, numberOfBreathsToTapTwice: $numberOfBreathsToTapTwice, showResults: $showResults, meditationDuration: $meditationDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreathingGameStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.numberOfBreathsToTapTwice,
                    numberOfBreathsToTapTwice) ||
                other.numberOfBreathsToTapTwice == numberOfBreathsToTapTwice) &&
            (identical(other.showResults, showResults) ||
                other.showResults == showResults) &&
            (identical(other.meditationDuration, meditationDuration) ||
                other.meditationDuration == meditationDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      numberOfBreathsToTapTwice,
      showResults,
      meditationDuration);

  /// Create a copy of BreathingGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreathingGameStateImplCopyWith<_$BreathingGameStateImpl> get copyWith =>
      __$$BreathingGameStateImplCopyWithImpl<_$BreathingGameStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreathingGameStateImplToJson(
      this,
    );
  }
}

abstract class _BreathingGameState implements BreathingGameState {
  factory _BreathingGameState(
      {required final List<Prediction> results,
      required final int numberOfBreathsToTapTwice,
      required final bool showResults,
      required final Duration meditationDuration}) = _$BreathingGameStateImpl;

  factory _BreathingGameState.fromJson(Map<String, dynamic> json) =
      _$BreathingGameStateImpl.fromJson;

  @override
  List<Prediction> get results;
  @override
  int get numberOfBreathsToTapTwice;
  @override
  bool get showResults;
  @override
  Duration get meditationDuration;

  /// Create a copy of BreathingGameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreathingGameStateImplCopyWith<_$BreathingGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
