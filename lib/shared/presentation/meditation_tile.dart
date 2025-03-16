import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/shared/presentation/custom_sizes.dart';
import 'package:meditation/shared/presentation/meditation_element_badge.dart';
import 'package:meditation/shared/routing/route_names.dart';

class MeditationTile extends StatelessWidget {
  const MeditationTile({
    required this.meditation,
    super.key,
  });

  final Meditation meditation;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => context.push(
              RoutePaths.audioPlayer,
              extra: meditation.copyWith(
                imagePath: meditation.imagePath,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.mediumSize,
                vertical: CustomSizes.smallSize,
              ),
              margin: const EdgeInsets.symmetric(
                vertical: CustomSizes.smallSize,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${meditation.title} - ${meditation.duration.inMinutes} min',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    meditation.artist,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (meditation.elements.isNotEmpty)
                    Padding(
                      padding:
                          const EdgeInsets.only(top: CustomSizes.smallSize),
                      child: Wrap(
                        spacing: CustomSizes.smallSize,
                        children: [
                          for (final element in meditation.elements)
                            MeditationElementBadge(element: element),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
        ],
      );
}
