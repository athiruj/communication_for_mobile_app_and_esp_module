import 'package:flutter/material.dart';

enum ConnectionProtocol { none, bluetooth, wifi }

class IconBox extends StatelessWidget {
  const IconBox({
    // this.disabledColor,
    // this.focusColor,
    // this.hoverColor,
    super.key,
    required this.icon,
    this.iconSize,
    this.protocol,
    required this.onPressed,
    this.isSelected,
    this.color,
    this.autofocus = false,
    this.focusNode,
    this.padding,
    this.alignment,
    this.style,
    this.tooltip,
  });

  final Widget icon;
  final double? iconSize;
  final ConnectionProtocol? protocol;
  final bool? isSelected;
  final VoidCallback? onPressed;
  final Color? color;
  final bool autofocus;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final ButtonStyle? style;
  final String? tooltip;

  static ButtonStyle styleFrom({
    Color? foregroundColor,
    double? iconSize,
    EdgeInsetsGeometry? padding,
    Duration? animationDuration,
    AlignmentGeometry? alignment,
  }) {
    return ButtonStyle(
      padding: ButtonStyleButton.allOrNull<EdgeInsetsGeometry>(padding),
      iconSize: ButtonStyleButton.allOrNull<double>(iconSize),
      animationDuration: animationDuration,
      alignment: alignment,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colors = theme.colorScheme;

    Color? currentColor;
    if (onPressed != null) {
      currentColor = colors.onSurface;
    } else {
      currentColor = colors.surfaceTint;
    }
    final double effectiveIconSize =
        iconSize ?? IconTheme.of(context).size ?? 24.0;
    final EdgeInsetsGeometry effectivePadding =
        padding ?? const EdgeInsets.all(8.0);
    final AlignmentGeometry effectiveAlignment = alignment ?? Alignment.center;

    ButtonStyle adjustedStyle = styleFrom(
      // visualDensity: visualDensity,
      foregroundColor: currentColor,

      // disabledForegroundColor: disabledColor,
      // focusColor: focusColor,
      // hoverColor: hoverColor,
      // highlightColor: highlightColor,
      padding: effectivePadding,
      // minimumSize: minSize,
      // maximumSize: maxSize,
      iconSize: effectiveIconSize,
      alignment: effectiveAlignment,
      // enabledMouseCursor: mouseCursor,
      // disabledMouseCursor: mouseCursor,
      // enableFeedback: enableFeedback,
    );
    if (style != null) {
      adjustedStyle = style!.merge(adjustedStyle);
    }

    Widget effectiveIcon = icon;

    Widget iconButton = effectiveIcon;
    if (tooltip != null) {
      iconButton = Tooltip(
        message: tooltip,
        child: effectiveIcon,
      );
    }

    final ConnectionProtocol effectiveProtocol =
        protocol ?? ConnectionProtocol.none;

    return _SelectableIconButton(
      style: adjustedStyle,
      onPressed: onPressed,
      autofocus: autofocus,
      focusNode: focusNode,
      isSelected: isSelected,
      child: _IconBoxChild(
        icon: iconButton,
        protocol: effectiveProtocol,
      ),
    );
  }
}

class _SelectableIconButton extends StatefulWidget {
  const _SelectableIconButton({
    this.isSelected,
    this.style,
    this.focusNode,
    required this.autofocus,
    required this.onPressed,
    required this.child,
  });

  final bool? isSelected;
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<_SelectableIconButton> createState() => _SelectableIconButtonState();
}

class _SelectableIconButtonState extends State<_SelectableIconButton> {
  late final MaterialStatesController statesController;

  @override
  void initState() {
    super.initState();
    if (widget.isSelected == null) {
      statesController = MaterialStatesController();
    } else {
      statesController = MaterialStatesController(
          <MaterialState>{if (widget.isSelected!) MaterialState.selected});
    }
  }

  @override
  void didUpdateWidget(_SelectableIconButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected == null) {
      if (statesController.value.contains(MaterialState.selected)) {
        statesController.update(MaterialState.selected, false);
      }
      return;
    }
    if (widget.isSelected != oldWidget.isSelected) {
      statesController.update(MaterialState.selected, widget.isSelected!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _IconBox(
      statesController: statesController,
      style: widget.style,
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }
}

class _IconBox extends ButtonStyleButton {
  const _IconBox({
    required super.onPressed,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.statesController,
    required Widget super.child,
  }) : super(
          onLongPress: null,
          onHover: null,
          onFocusChange: null,
          clipBehavior: Clip.none,
        );

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return _IconBoxDefault(context);
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
}

class _IconBoxChild extends StatelessWidget {
  const _IconBoxChild({
    required this.icon,
    required this.protocol,
  });

  final Widget icon;

  final ConnectionProtocol? protocol;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    Color barColor = colorScheme.surfaceTint;

    if (protocol == ConnectionProtocol.none) {
      barColor = colorScheme.surfaceTint;
    }
    if (protocol == ConnectionProtocol.bluetooth) {
      barColor = colorScheme.tertiary;
    }
    if (protocol == ConnectionProtocol.wifi) {
      barColor = colorScheme.secondary;
    }

    return Column(
      children: [
        icon,
        Container(
          constraints: const BoxConstraints.expand(height: 6.0),
          color: barColor,
        )
      ],
    );
  }
}

class _IconBoxDefault extends ButtonStyle {
  _IconBoxDefault(this.context)
      : super(
          animationDuration: const Duration(milliseconds: 1000),
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
          Theme.of(context).textTheme.labelLarge);

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.surface.withOpacity(0.38);
        }

        if (states.contains(MaterialState.selected)) {
          return _colors.primary;
        }

        return _colors.surface;
      });

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.onSurface.withOpacity(0.38);
        }
        if (states.contains(MaterialState.selected)) {
          return _colors.onSurface;
        }
        return _colors.onSurface;
      });

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      MaterialStatePropertyAll<Color>(_colors.surfaceTint);

  @override
  MaterialStateProperty<Color>? get shadowColor =>
      const MaterialStatePropertyAll<Color>(Color(0x00000000));

  @override
  MaterialStateProperty<Color>? get surfaceTintColor =>
      const MaterialStatePropertyAll<Color>(Color(0x00000000));

  @override
  MaterialStateProperty<double>? get elevation =>
      const MaterialStatePropertyAll<double>(0.0);

  @override
  MaterialStateProperty<EdgeInsetsGeometry>? get padding =>
      const MaterialStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      );

  @override
  MaterialStateProperty<Size>? get minimumSize =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Size(440.0, 136.0);
        }
        return const Size(136.0, 136.0);
      });
  // No default fixedSize

  @override
  MaterialStateProperty<Size>? get maximumSize =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Size(440.0, 136.0);
        }
        return const Size(136.0, 136.0);
      });

  // No default side

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      );

  @override
  MaterialStateProperty<MouseCursor?>? get mouseCursor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return SystemMouseCursors.basic;
        }
        return SystemMouseCursors.click;
      });

  @override
  VisualDensity? get visualDensity => Theme.of(context).visualDensity;

  @override
  MaterialTapTargetSize? get tapTargetSize =>
      Theme.of(context).materialTapTargetSize;

  @override
  InteractiveInkFeatureFactory? get splashFactory =>
      Theme.of(context).splashFactory;
}
