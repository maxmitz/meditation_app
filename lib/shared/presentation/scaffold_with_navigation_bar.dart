import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/shared/routing/route_names.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  bool hideNavBar = false;
  @override
  Widget build(BuildContext context) {
    GoRouter.of(context).routerDelegate.addListener(
      () {
        final currentRoute = GoRouter.of(context).routerDelegate.state.fullPath;
        if (currentRoute == RoutePaths.search ||
            currentRoute == RoutePaths.home) {
          setState(() => hideNavBar = false);
        } else {
          setState(() => hideNavBar = true);
        }
      },
    );

    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: hideNavBar
          ? null
          : BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Start'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Suche',
                ),
              ],
              currentIndex: widget.navigationShell.currentIndex,
              onTap: widget.navigationShell.goBranch,
            ),
    );
  }
}
