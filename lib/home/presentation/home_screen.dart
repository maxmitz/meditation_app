import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/home/presentation/widgets/home_card.dart';
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
                  svgPath: 'assets/svgs/wind.svg',
                  title: 'BREATHING GAME',
                ),
              ],
            ),
          ),
        ),
      );
}
