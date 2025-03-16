// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchScreenState {
  List<Meditation> get meditations => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  List<MeditationElements> get searchElements =>
      throw _privateConstructorUsedError;

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res, SearchScreenState>;
  @useResult
  $Res call(
      {List<Meditation> meditations,
      String searchQuery,
      List<MeditationElements> searchElements});
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res, $Val extends SearchScreenState>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meditations = null,
    Object? searchQuery = null,
    Object? searchElements = null,
  }) {
    return _then(_value.copyWith(
      meditations: null == meditations
          ? _value.meditations
          : meditations // ignore: cast_nullable_to_non_nullable
              as List<Meditation>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      searchElements: null == searchElements
          ? _value.searchElements
          : searchElements // ignore: cast_nullable_to_non_nullable
              as List<MeditationElements>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchScreenStateImplCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$$SearchScreenStateImplCopyWith(_$SearchScreenStateImpl value,
          $Res Function(_$SearchScreenStateImpl) then) =
      __$$SearchScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Meditation> meditations,
      String searchQuery,
      List<MeditationElements> searchElements});
}

/// @nodoc
class __$$SearchScreenStateImplCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res, _$SearchScreenStateImpl>
    implements _$$SearchScreenStateImplCopyWith<$Res> {
  __$$SearchScreenStateImplCopyWithImpl(_$SearchScreenStateImpl _value,
      $Res Function(_$SearchScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meditations = null,
    Object? searchQuery = null,
    Object? searchElements = null,
  }) {
    return _then(_$SearchScreenStateImpl(
      meditations: null == meditations
          ? _value._meditations
          : meditations // ignore: cast_nullable_to_non_nullable
              as List<Meditation>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      searchElements: null == searchElements
          ? _value._searchElements
          : searchElements // ignore: cast_nullable_to_non_nullable
              as List<MeditationElements>,
    ));
  }
}

/// @nodoc

class _$SearchScreenStateImpl implements _SearchScreenState {
  const _$SearchScreenStateImpl(
      {required final List<Meditation> meditations,
      required this.searchQuery,
      required final List<MeditationElements> searchElements})
      : _meditations = meditations,
        _searchElements = searchElements;

  final List<Meditation> _meditations;
  @override
  List<Meditation> get meditations {
    if (_meditations is EqualUnmodifiableListView) return _meditations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meditations);
  }

  @override
  final String searchQuery;
  final List<MeditationElements> _searchElements;
  @override
  List<MeditationElements> get searchElements {
    if (_searchElements is EqualUnmodifiableListView) return _searchElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchElements);
  }

  @override
  String toString() {
    return 'SearchScreenState(meditations: $meditations, searchQuery: $searchQuery, searchElements: $searchElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._meditations, _meditations) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality()
                .equals(other._searchElements, _searchElements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_meditations),
      searchQuery,
      const DeepCollectionEquality().hash(_searchElements));

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchScreenStateImplCopyWith<_$SearchScreenStateImpl> get copyWith =>
      __$$SearchScreenStateImplCopyWithImpl<_$SearchScreenStateImpl>(
          this, _$identity);
}

abstract class _SearchScreenState implements SearchScreenState {
  const factory _SearchScreenState(
          {required final List<Meditation> meditations,
          required final String searchQuery,
          required final List<MeditationElements> searchElements}) =
      _$SearchScreenStateImpl;

  @override
  List<Meditation> get meditations;
  @override
  String get searchQuery;
  @override
  List<MeditationElements> get searchElements;

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchScreenStateImplCopyWith<_$SearchScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
