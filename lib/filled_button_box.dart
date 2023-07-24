import 'package:flutter/material.dart';

class FilledButtonBox extends ButtonStyleButton {
  const FilledButtonBox({
    super.key,
    super.autofocus = false,
    required super.child,
    super.focusNode,
    super.onFocusChange,
    super.onHover,
    super.onLongPress,
    required super.onPressed,
  }) : super(clipBehavior: Clip.none, style: null);

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return _FilledButtonBoxDefaults(context);
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return null;
  }
}

class _FilledButtonBoxDefaults extends ButtonStyle {
  _FilledButtonBoxDefaults(this.context)
      : super(
          animationDuration: kThemeChangeDuration,
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;

  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
        Theme.of(context).textTheme.labelLarge,
      );

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.surface.withOpacity(0.38);
        }

        if (states.contains(MaterialState.focused)) {
          return _colors.primary;
        }

        return _colors.surface;
      });

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.surfaceTint;
        }

        if (states.contains(MaterialState.focused)) {
          return _colors.onPrimary;
        }

        return _colors.onSurface;
      });

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      MaterialStatePropertyAll<Color>(_colors.primary);

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
        EdgeInsets.symmetric(horizontal: 16.0),
      );

  @override
  MaterialStateProperty<Size?>? get minimumSize =>
      const MaterialStatePropertyAll<Size>(Size(240.0, 56.0));

  @override
  MaterialStateProperty<Size?>? get maximumSize =>
      const MaterialStatePropertyAll<Size>(Size(440.0, 56.0));

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
