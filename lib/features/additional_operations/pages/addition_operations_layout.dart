import 'package:flutter/material.dart';

class AdditionOperationsLayout extends StatelessWidget {
  const AdditionOperationsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: const Center(
        child: Text('Operaciones de suma'),
      ),
    );
  }
}
