import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/shared/presentation/custom_sizes.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    required this.onTap,
    required this.svgPath,
    required this.title,
    super.key,
  });

  final Function() onTap;
  final String svgPath;
  final String title;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
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
                  bottom: 0,
                  child: SvgPicture.asset(
                    svgPath,
                    width: 120,
                    height: 120,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -1,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
