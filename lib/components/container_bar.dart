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

    final Widget result = ConstrainedBox(constraints: const BoxConstraints());
    return Container();
  }
}

class ContainerBarStyle with Diagnosticable {
  const ContainerBarStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.minimumSize,
    this.maximumSize,
    this.minimumFactor,
    this.maximumFactor,
    this.padding,
    this.shape,
    this.alignment,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Size? minimumSize;
  final Size? maximumSize;
  final double? minimumFactor;
  final double? maximumFactor;
  final EdgeInsetsGeometry? padding;
  final OutlinedBorder? shape;
  final AlignmentGeometry? alignment;

  ContainerBarStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    Size? minimumSize,
    Size? maximumSize,
    double? minimumFactor,
    double? maximumFactor,
    EdgeInsetsGeometry? padding,
    OutlinedBorder? shape,
    AlignmentGeometry? alignment,
  }) {
    return ContainerBarStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      minimumSize: minimumSize ?? this.minimumSize,
      maximumSize: maximumSize ?? this.maximumSize,
      minimumFactor: minimumFactor ?? this.minimumFactor,
      maximumFactor: maximumFactor ?? this.maximumFactor,
      padding: padding ?? this.padding,
      shape: shape ?? this.shape,
      alignment: alignment ?? this.alignment,
    );
  }
}
