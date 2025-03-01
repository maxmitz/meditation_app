import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meditation/shared/routing/router.dart';

void main() {
  runApp(const ProviderScope(child: MeditationApp()));
}

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: goRouter,
      );
}
