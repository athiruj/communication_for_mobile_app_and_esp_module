import 'package:commu_app/status.dart';
import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  final Icon icon;
  final StatusBar? statusBar;

  const IconBox({super.key, required this.icon, this.statusBar});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      child: Container(
        color: colorScheme.surface,
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
          maxHeight: 136.0,
          minWidth: 136.0,
          minHeight: 136.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            statusBar ??
                const StatusBar(
                  width: double.infinity,
                ),
          ],
        ),
      ),
    );
  }
}
