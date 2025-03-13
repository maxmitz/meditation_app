import 'package:flutter/material.dart';
import 'package:meditation/shared/presentation/custom_sizes.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    required this.onTap,
    required this.imagePath,
    required this.title,
    super.key,
  });

  final Function() onTap;
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Hero(
              tag: imagePath + title,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: CustomSizes.mediumSize,
                ),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(CustomSizes.largeSize),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
              ),
            ),
            Positioned(
              left: CustomSizes.largeSize,
              bottom: CustomSizes.largeSize,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1,
                ),
              ),
            ),
          ],
        ),
      );
}
