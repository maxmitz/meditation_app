import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meditation/home/data/meditations.dart';
import 'package:meditation/search/view_model/search_screen_state.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/shared/domain/meditation_elements.dart';

class SearchScreenNotifier extends StateNotifier<SearchScreenState> {
  SearchScreenNotifier()
      : super(
          SearchScreenState(
            meditations: allMeditations,
            searchQuery: '',
            searchElements: [],
          ),
        );

  void updateSearchQuery(String query) {
    final filteredMeditations = _filterMeditationsByElementsAndSearchQuery(
      query,
      state.searchElements,
    );
    state = state.copyWith(
      searchQuery: query,
      meditations: filteredMeditations,
    );
  }

  void updateSearchElement(
    MeditationElements searchElement,
  ) {
    List<MeditationElements> searchElements = [...state.searchElements];

    searchElements.contains(searchElement)
        ? searchElements.remove(searchElement)
        : searchElements.add(searchElement);

    final filteredMeditations = _filterMeditationsByElementsAndSearchQuery(
      state.searchQuery,
      searchElements,
    );
    state = state.copyWith(
      searchElements: searchElements,
      meditations: filteredMeditations,
    );
  }

  List<Meditation> _filterMeditationsByElementsAndSearchQuery(
    String searchQuery,
    List<MeditationElements> searchElements,
  ) {
    if (searchQuery.isEmpty && searchElements.isEmpty) {
      return allMeditations;
    }

    if (searchQuery.isNotEmpty && searchElements.isEmpty) {
      return allMeditations
          .where(
            (meditation) =>
                meditation.title
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase()) ||
                meditation.artist
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase()),
          )
          .toList();
    }

    if (searchQuery.isEmpty && searchElements.isNotEmpty) {
      return allMeditations.where((meditation) {
        for (final element in searchElements) {
          if (meditation.elements.contains(element)) {
            return true;
          }
        }
        return false;
      }).toList();
    }

    return allMeditations
        .where(
          (meditation) =>
              (meditation.title
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase()) ||
                  meditation.artist
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase())) &&
              searchElements
                  .any((element) => meditation.elements.contains(element)),
        )
        .toList();
  }
}

final searchScreenProvider =
    StateNotifierProvider<SearchScreenNotifier, SearchScreenState>(
  (_) => SearchScreenNotifier(),
);
