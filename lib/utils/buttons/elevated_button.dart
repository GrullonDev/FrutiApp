import 'package:flutter/material.dart';
import 'package:fruti_app/utils/responsive/responsive.dart';
import 'package:fruti_app/utils/styles/button_style.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.onTap,
    super.key,
    this.title,
    this.child,
    this.margin = EdgeInsets.zero,
    this.style,
  }) : assert(title != null || child != null);

  final String? title;
  final VoidCallback? onTap;

  /// When child is not null it will be displayed
  final Widget? child;
  final EdgeInsetsGeometry margin;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: margin,
      child: ElevatedButton(
        style: style ?? UIButtonStyle.elevatedButtonStyle(),
        onPressed: onTap,
        child: child ??
            FittedBox(
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: context.isMobile ? 16.0 : 20.0,
                ),
              ),
            ),
      ),
    );
  }
}
