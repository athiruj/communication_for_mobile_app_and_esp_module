import 'package:flutter/material.dart';

class TextButtonBox extends ButtonStyleButton {
  const TextButtonBox({
    required super.child,
    required super.onPressed,
    super.autofocus = false,
    super.focusNode,
    super.key,
    super.onFocusChange,
    super.onHover,
    super.onLongPress,
  }) : super(
          clipBehavior: Clip.none,
          style: null,
        );

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return _TextButtonBoxDefaults(context);
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
}

class _TextButtonBoxDefaults extends ButtonStyle {
  _TextButtonBoxDefaults(this.context)
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
        Theme.of(context).textTheme.bodyLarge,
      );

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      const MaterialStatePropertyAll<Color>(Color(0x00000000));

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return _colors.surfaceTint;
        }

        if (states.contains(MaterialState.focused)) {
          return _colors.primary;
        }

        return _colors.onSurface;
      });

  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      const MaterialStatePropertyAll<Color>(Color(0x00000000));

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
        EdgeInsets.zero,
      );

  @override
  MaterialStateProperty<Size?>? get minimumSize =>
      const MaterialStatePropertyAll<Size>(Size(240.0, 56.0));

  @override
  MaterialStateProperty<Size?>? get maximumSize =>
      const MaterialStatePropertyAll<Size>(Size(440.0, 56.0));

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      const MaterialStatePropertyAll<OutlinedBorder>(StadiumBorder());

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
