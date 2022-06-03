import 'package:flutter/material.dart';

class TopHeaderProfile extends StatelessWidget {
  final String imagePath;
  final String name;

  const TopHeaderProfile({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset(imagePath, width: 80, height: 80),
        )
      ],
    );
  }
}
