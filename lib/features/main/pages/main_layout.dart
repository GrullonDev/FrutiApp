import 'package:flutter/material.dart';
import 'package:fruti_app/features/main/widgets/main_form.dart';
import 'package:fruti_app/utils/responsive/responsive.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, __) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                context.isTablet ? 40.0 : 20.0, // Padding mayor en tabletas
          ),
          child: const MainForm(),
        );
      },
    );
  }
}
