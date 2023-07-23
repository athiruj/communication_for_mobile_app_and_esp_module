import 'package:flutter/material.dart';

/// Status Bar cover the parent height
/// * StatusBar()
/// * StatusBar.blue()
/// * StatusBar.green()
/// * StatusBar.none()
class StatusBar extends StatelessWidget {
  final double? width;

  final double? height;

  final Color? color;

  const StatusBar({
    super.key,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      constraints:
          BoxConstraints.expand(width: width ?? 6.0, height: height ?? 6.0),
      decoration: BoxDecoration(
        color: color ?? colorScheme.surfaceTint,
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  /// Secondary Color
  factory StatusBar.blue() {
    return const StatusBar(color: Color(0xFF0085FF));
  }

  /// Tertiary Color
  factory StatusBar.green() {
    return const StatusBar(color: Color(0xFF5EDC1F));
  }

  /// None (Tranparent)
  factory StatusBar.none() {
    return const StatusBar(color: Color(0x00000000));
  }
}
