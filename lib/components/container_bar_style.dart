import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContainerBarStyle with Diagnosticable {
  const ContainerBarStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.minimumFactor,
    this.fixedFactor,
    this.maximumFactor,
    this.visualDensity,
    this.padding,
    this.radius,
    this.animationDuration,
    this.alignment,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Size? minimumSize;
  final Size? fixedSize;
  final Size? maximumSize;
  final double? minimumFactor;
  final double? fixedFactor;
  final double? maximumFactor;
  final VisualDensity? visualDensity;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? radius;
  final Duration? animationDuration;
  final AlignmentGeometry? alignment;

  ContainerBarStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    double? minimumFactor,
    double? fixedFactor,
    double? maximumFactor,
    VisualDensity? visualDensity,
    EdgeInsetsGeometry? padding,
    BorderRadius? radius,
    Duration? animationDuration,
    AlignmentGeometry? alignment,
  }) {
    return ContainerBarStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      minimumSize: minimumSize ?? this.minimumSize,
      fixedSize: fixedSize ?? this.fixedSize,
      maximumSize: maximumSize ?? this.maximumSize,
      minimumFactor: minimumFactor ?? this.minimumFactor,
      fixedFactor: fixedFactor ?? this.fixedFactor,
      maximumFactor: maximumFactor ?? this.maximumFactor,
      visualDensity: visualDensity ?? this.visualDensity,      
      padding: padding ?? this.padding,
      radius: radius ?? this.radius,
      animationDuration: animationDuration ?? this.animationDuration,
      alignment: alignment ?? this.alignment,
    );
  }
}
