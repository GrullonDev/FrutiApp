import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({
    super.key,
    required this.scoreController,
  });

  final TextEditingController scoreController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextFormField(
        controller: scoreController,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.purple,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.purple.withOpacity(0.7),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
