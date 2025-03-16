import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/shared/domain/meditation_elements.dart';

part 'search_screen_state.freezed.dart';

@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState({
    required List<Meditation> meditations,
    required String searchQuery,
    required List<MeditationElements> searchElements,
  }) = _SearchScreenState;
}
