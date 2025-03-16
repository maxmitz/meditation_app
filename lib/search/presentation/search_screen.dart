import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meditation/search/view_model/search_screen_provider.dart';
import 'package:meditation/shared/domain/meditation_elements.dart';
import 'package:meditation/shared/presentation/custom_sizes.dart';
import 'package:meditation/shared/presentation/meditation_element_badge.dart';
import 'package:meditation/shared/presentation/meditation_tile.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allFilteredMeditations = ref.watch(searchScreenProvider).meditations;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.mediumSize,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Suche...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                ),
                onChanged: (value) => ref
                    .read(searchScreenProvider.notifier)
                    .updateSearchQuery(value),
              ),
            ),
            const SizedBox(height: CustomSizes.smallSize),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.mediumSize,
              ),
              child: Wrap(
                spacing: CustomSizes.smallSize,
                children: [
                  for (final element in MeditationElements.values)
                    MeditationElementBadge(
                      element: element,
                      isActive: ref
                          .watch(searchScreenProvider)
                          .searchElements
                          .contains(element),
                      onPressed: () => ref
                          .read(searchScreenProvider.notifier)
                          .updateSearchElement(element),
                    ),
                ],
              ),
            ),
            const SizedBox(height: CustomSizes.smallSize),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (final meditation in allFilteredMeditations)
                      MeditationTile(meditation: meditation),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
