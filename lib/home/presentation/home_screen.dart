import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/home/data/meditations.dart';
import 'package:meditation/home/presentation/widgets/home_card.dart';
import 'package:meditation/shared/presentation/asset_paths.dart';
import 'package:meditation/shared/routing/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeCard(
                  onTap: () => context.go(RoutePaths.breathingGame),
                  imagePath: AssetPaths.background,
                  title: 'Spiel',
                ),
                for (final meditationOverviewData in categories)
                  HomeCard(
                    onTap: () => context.go(
                      RoutePaths.meditationOverview,
                      extra: meditationOverviewData,
                    ),
                    imagePath: AssetPaths.background,
                    title: meditationOverviewData.title,
                  ),
              ],
            ),
          ),
        ),
      );
}
