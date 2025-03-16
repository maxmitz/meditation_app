import 'package:flutter/material.dart';
import 'package:meditation/meditation_overview/view_model/meditation_overview_data.dart';
import 'package:meditation/shared/presentation/custom_back_button.dart';
import 'package:meditation/shared/presentation/custom_sizes.dart';
import 'package:meditation/shared/presentation/meditation_tile.dart';

class MeditationOverviewScreen extends StatelessWidget {
  const MeditationOverviewScreen({
    required this.meditationOverviewData,
    super.key,
  });

  final MeditationOverviewData meditationOverviewData;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Hero(
                          tag: meditationOverviewData.imagePath +
                              meditationOverviewData.title,
                          child: Image.asset(meditationOverviewData.imagePath),
                        ),
                        Positioned(
                          bottom: CustomSizes.mediumSize,
                          left: CustomSizes.mediumSize,
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              meditationOverviewData.title,
                              style: const TextStyle(
                                fontSize: 48,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (final meditation in meditationOverviewData.meditations)
                      MeditationTile(meditation: meditation),
                  ],
                ),
              ),
            ),
            const CustomBackButton(),
          ],
        ),
      );
}
