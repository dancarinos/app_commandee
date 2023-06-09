import 'package:flutter/material.dart ';

class SquareTile extends StatelessWidget {
  final String imagePath;

  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.white38,
      ),
      child: Image.asset(
        imagePath, height: 72,
      ),
    );
  }
}
