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
        child: Container(
          width: double.infinity,
          height: 300,
          margin: const EdgeInsets.all(CustomSizes.mediumSize),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CustomSizes.largeSize),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.withOpacity(0.3),
                Colors.blue.withOpacity(0.7),
              ],
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(CustomSizes.largeSize),
                  topRight: Radius.circular(CustomSizes.largeSize),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1,
                ),
              ),
            ],
          ),
        ),
      );
}
