import 'package:flutter/material.dart';
import 'package:fruti_app/features/main/widgets/main_form.dart';
import 'package:fruti_app/utils/widgets/custom_appbar.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Fruti App',
        icon: Icons.gamepad_outlined,
      ),
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: MainForm(),
      ),
    );
  }
}
