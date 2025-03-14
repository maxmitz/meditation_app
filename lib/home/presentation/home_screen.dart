import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/home/data/meditations.dart';
import 'package:meditation/home/presentation/widgets/home_app_bar.dart';
import 'package:meditation/home/presentation/widgets/home_card.dart';
import 'package:meditation/home/presentation/widgets/home_group_text.dart';
import 'package:meditation/shared/presentation/asset_paths.dart';
import 'package:meditation/shared/presentation/custom_sizes.dart';
import 'package:meditation/shared/routing/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const HomeAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(CustomSizes.mediumSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeGroupText(text: 'Audio'),
                  for (final meditationOverviewData in categories)
                    HomeCard(
                      onTap: () => context.go(
                        RoutePaths.meditationOverview,
                        extra: meditationOverviewData,
                      ),
                      imagePath: meditationOverviewData.imagePath,
                      title: meditationOverviewData.title,
                    ),
                  const HomeGroupText(text: 'Tools'),
                  HomeCard(
                    onTap: () => context.go(RoutePaths.breathingGame),
                    imagePath: AssetPaths.backgroundGame,
                    title: 'Atemspiel',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
