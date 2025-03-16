import 'package:flutter/material.dart';
import 'package:meditation/shared/domain/meditation_elements.dart';

class MeditationElementBadge extends StatelessWidget {
  const MeditationElementBadge({
    required this.element,
    this.onPressed,
    this.isActive = true,
    super.key,
  });

  final MeditationElements element;
  final VoidCallback? onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: isActive ? element.color : Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            element.title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      );
}
