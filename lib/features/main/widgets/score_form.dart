import 'package:flutter/material.dart';
import 'package:fruti_app/utils/responsive/responsive.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({
    required this.scoreController,
    super.key,
  });

  final TextEditingController scoreController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.isMobile ? 10.0 : 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextFormField(
        controller: scoreController,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: context.isMobile ? 14.0 : 12.0,
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
