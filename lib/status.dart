import 'package:flutter/material.dart';

/// Status Bar cover the parent height
/// * StatusBar()
/// * StatusBar.blue()
/// * StatusBar.green()
/// * StatusBar.none()
class StatusBar extends StatelessWidget {
  final int width = 6;
  final double? height;
  final Color? color;
  const StatusBar({super.key, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: 6,height: height),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.surfaceTint,
        borderRadius: BorderRadius.circular(3),
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
