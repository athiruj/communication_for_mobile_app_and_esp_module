import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class ContainerBar extends StatefulWidget {
  const ContainerBar({
    super.key,
    required this.enabled,
    required this.factor,
    required this.style,
    this.statesController,
  });

  final bool enabled;
  final double factor;
  // final bool enabled;
  final ContainerBarStyle style;
  final MaterialStatesController? statesController;

  @protected
  ContainerBarStyle defaultStyleOf(BuildContext context);

  @override
  State<ContainerBar> createState() => _ContainerBarState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(FlagProperty('enabled', value: enabled, ifFalse: 'disabled'));
    properties.add(DiagnosticsProperty<ContainerBarStyle>('style', style,
        defaultValue: null));
  }
}

class _ContainerBarState extends State<ContainerBar>
    with TickerProviderStateMixin {
  AnimationController? controller;
  double? elevation;
  Color? backgroundColor;
  MaterialStatesController? internalStatesController;

  MaterialStatesController get statesController =>
      widget.statesController ?? internalStatesController!;

  void handleStatesControllerChange() {
    // Force a rebuild to resolve MaterialStateProperty properties
    setState(() {});
  }

  void initStatesController() {
    if (widget.statesController == null) {
      internalStatesController = MaterialStatesController();
    }
    statesController.update(MaterialState.disabled, !widget.enabled);
    statesController.addListener(handleStatesControllerChange);
  }

  @override
  void initState() {
    super.initState();
    initStatesController();
  }

  @override
  void dispose() {
    statesController.removeListener(handleStatesControllerChange);
    internalStatesController?.dispose();
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme _colors = Theme.of(context).colorScheme;
    final ContainerBarStyle? widgetStyle = widget.style;
    final ContainerBarStyle defaultStyle = widget.defaultStyleOf(context);
    assert(defaultStyle != null);

    T? effectiveValue<T>(T? Function(ContainerBarStyle? style) getProperty) {
      final T? widgetValue = getProperty(widgetStyle);
      final T? defaultValue = getProperty(defaultStyle);
      return widgetValue ?? defaultValue;
    }

    // T? resolve<T>(
    //     MaterialStateProperty<T>? Function(ContainerBarStyle? style)
    //         getProperty) {
    //   return effectiveValue(
    //     (ContainerBarStyle? style) {
    //       return getProperty(style)?.resolve(statesController.value);
    //     },
    //   );
    // }
    final Color? resolvedBackgroundColor =
        effectiveValue((ContainerBarStyle? style) => style?.backgroundColor);
    final Color? resolvedForegroundColor =
        effectiveValue((ContainerBarStyle? style) => style?.foregroundColor);
    final Size? resolvedMinimumSize =
        effectiveValue((ContainerBarStyle? style) => style?.minimumSize);
    final Size? resolvedFixedSize =
        effectiveValue((ContainerBarStyle? style) => style?.fixedSize);
    final Size? resolvedMaximumSize =
        effectiveValue((ContainerBarStyle? style) => style?.maximumSize);
    final double? resolvedMinimumFactor =
        effectiveValue((ContainerBarStyle? style) => style?.minimumFactor);
    final double? resolvedFixedFactor =
        effectiveValue((ContainerBarStyle? style) => style?.fixedFactor);
    final double? resolvedMaximumFactor =
        effectiveValue((ContainerBarStyle? style) => style?.maximumFactor);

    final VisualDensity? resolvedVisualDensity =
        effectiveValue((ContainerBarStyle? style) => style?.visualDensity);
    final EdgeInsetsGeometry? resolvedPadding =
        effectiveValue((ContainerBarStyle? style) => style?.padding);
    final OutlinedBorder? resolveShape =
        effectiveValue((ContainerBarStyle? style) => style?.shape);
    final Duration? resolvedAnimationDuration =
        effectiveValue((ContainerBarStyle? style) => style?.animationDuration);
    final AlignmentGeometry? resolveAlignment =
        effectiveValue((ContainerBarStyle? style) => style?.alignment);
    final Offset densityAdjustment = resolvedVisualDensity!.baseSizeAdjustment;

    BoxConstraints effectiveConstraints =
        resolvedVisualDensity.effectiveConstraints(
      BoxConstraints(
        minWidth: resolvedMinimumSize!.width,
        minHeight: resolvedMinimumSize.height,
        maxWidth: resolvedMaximumSize!.width,
        maxHeight: resolvedMaximumSize.height,
      ),
    );
    if (resolvedFixedSize != null) {
      final Size size = effectiveConstraints.constrain(resolvedFixedSize);
      if (size.width.isFinite) {
        effectiveConstraints = effectiveConstraints.copyWith(
          minWidth: size.width,
          maxWidth: size.width,
        );
      }
      if (size.height.isFinite) {
        effectiveConstraints = effectiveConstraints.copyWith(
          minHeight: size.height,
          maxHeight: size.height,
        );
      }
    }

    final Widget result = ConstrainedBox(constraints: const BoxConstraints());
    return Container();
  }
}

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
    this.shape,
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
  final OutlinedBorder? shape;
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
    OutlinedBorder? shape,
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
      shape: shape ?? this.shape,
      animationDuration: animationDuration ?? this.animationDuration,
      alignment: alignment ?? this.alignment,
    );
  }
}
