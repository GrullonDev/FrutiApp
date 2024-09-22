import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.onBack,
    required this.title,
    required this.icon,
  });

  final Widget? onBack;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: onBack,
        title: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(title),
          ],
        ),
        backgroundColor: Colors.purpleAccent);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
