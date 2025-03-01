import 'package:flutter/material.dart';
import 'package:meditation/shared/presentation/custom_sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                //
              },
              child: Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.all(CustomSizes.smallSize),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(CustomSizes.largeSize),
                  color: Colors.blue.withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(CustomSizes.mediumLargeSize),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 30,
                        child: SvgPicture.asset(
                          'assets/svgs/wind.svg',
                          width: 300,
                          height: 150,
                        ),
                      ),
                      const Text(
                        'BREATHING GAME',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
