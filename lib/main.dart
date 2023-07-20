import 'package:flutter/material.dart';

import 'boxs.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorSchemeLight = const ColorScheme.light(
      primary: Color(0xFF050301),
      onPrimary: Color(0xFFFCFBFC),
      secondary: Color(0xFF0085FF),
      onSecondary: Color(0xFFA0D2FF),
      tertiary: Color(0xFF5EDC1F),
      onTertiary: Color(0xFFDBFFC9),
      surface: Color(0xFFECECEC),
      surfaceTint: Color(0xFFDADAD9),
      onSurface: Color(0xFFB6B5B4),
      error: Color(0xFFC51010),
    );

    ColorScheme colorSchemeDark = const ColorScheme.dark(
      primary: Color(0xFFFCFBFC),
      onPrimary: Color(0xFF050301),
      secondary: Color(0xFF0085FF),
      onSecondary: Color(0xFFA0D2FF),
      tertiary: Color(0xFF5EDC1F),
      onTertiary: Color(0xFFDBFFC9),
      surface: Color(0xFF272727),
      surfaceTint: Color(0xFF4F4F4E),
      onSurface: Color(0xFF9F9E9D),
      error: Color(0xFFC51010),
    );

    return MaterialApp(
        theme: ThemeData(
          // appBarTheme: appBarTheme,
          // applyElevationOverlayColor: applyElevationOverlayColor,
          // badgeTheme: badgeTheme,
          // bannerTheme: bannerTheme,
          // bottomAppBarTheme: bottomAppBarTheme,
          // bottomNavigationBarTheme: bottomNavigationBarTheme,
          // bottomSheetTheme: bottomSheetTheme,
          // buttonBarTheme: buttonBarTheme,
          // buttonTheme: buttonTheme,
          // canvasColor: canvasColor,
          // cardColor: cardColor,
          // cardTheme: cardTheme,
          // checkboxTheme: checkboxTheme,
          // chipTheme: chipTheme,
          colorScheme: colorSchemeLight,
          // cupertinoOverrideTheme: cupertinoOverrideTheme,
          // dataTableTheme: dataTableTheme,
          // dialogBackgroundColor: dialogBackgroundColor,
          // dialogTheme: dialogTheme,
          // disabledColor: disabledColor,
          // dividerColor: dividerColor,
          // dividerTheme: dividerTheme,
          // drawerTheme: drawerTheme,
          // dropdownMenuTheme: dropdownMenuTheme,
          // elevatedButtonTheme: elevatedButtonTheme,
          // expansionTileTheme: expansionTileTheme,
          // extensions: extensions,
          filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
              alignment: Alignment.center,
              // animationDuration: const Duration(milliseconds: 10),
              backgroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme surface
                    return colorSchemeLight.surface;
                  }

                  // if (states.contains(MaterialState.hovered)) {
                  //   // * colorScheme surfaceTint
                  //   return colorSchemeLight.surfaceTint;
                  // }

                  if (states.contains(MaterialState.focused)) {
                    // * colorScheme primary
                    return colorSchemeLight.primary;
                  }

                  // if (states.contains(MaterialState.pressed)) {
                  //   // * colorScheme primary
                  //   return colorSchemeLight.primary;
                  // }

                  // * colorScheme surface
                  return colorSchemeLight.surface;
                },
              ),
              // elevation: elevation,
              // enableFeedback: enableFeedback,
              // fixedSize: fixedSize,
              foregroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme surfaceTint
                    return colorSchemeLight.surfaceTint;
                  }

                  // if (states.contains(MaterialState.hovered)) {
                  //   // * colorScheme onSurface
                  //   return colorSchemeLight.onSurface;
                  // }

                  if (states.contains(MaterialState.focused)) {
                    // * colorScheme onPrimary
                    return colorSchemeLight.onPrimary;
                  }

                  // if (states.contains(MaterialState.pressed)) {
                  //   // * colorScheme onPrimary
                  //   return colorSchemeLight.onPrimary;
                  // }

                  // * colorScheme onSurface
                  return colorSchemeLight.onSurface;
                },
              ),
              // iconColor: iconColor,
              iconSize: const MaterialStatePropertyAll(36.0),
              // maximumSize: maximumSize,
              minimumSize: const MaterialStatePropertyAll(Size(314.0, 56.0)),
              // mouseCursor: mouseCursor,
              // overlayColor: overlayColor,
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 32.0),
              ),
              // shadowColor: shadowColor,
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
              // side: null,
              // splashFactory: splashFactory,
              // surfaceTintColor: surfaceTintColor,
              // tapTargetSize: tapTargetSize,
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // visualDensity: visualDensity,
            ),
          ),
          // floatingActionButtonTheme: floatingActionButtonTheme,
          // focusColor: focusColor,
          fontFamily: "Poppins",
          // highlightColor: highlightColor,
          // hintColor: hintColor,
          // hoverColor: hoverColor,
          // iconButtonTheme: iconButtonTheme,
          // iconTheme: iconTheme,
          // indicatorColor: indicatorColor,
          inputDecorationTheme: InputDecorationTheme(
            // activeIndicatorBorder: activeIndicatorBorder,
            // alignLabelWithHint: alignLabelWithHint,
            // border: border,
            // constraints: constraints,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 16.0,
            ),
            // counterStyle: counterStyle,
            disabledBorder: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme surface
                color: colorSchemeLight.surface,
                width: 0.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme error
                color: colorSchemeLight.error,
                width: 2.0,
              ),
            ),
            // errorMaxLines: errorMaxLines,
            errorStyle: TextStyle(
              fontSize: 14,
              // * colorScheme error
              color: colorSchemeLight.error,
              fontWeight: FontWeight.w400,
            ),
            // * colorScheme onPrimary
            fillColor: colorSchemeLight.onPrimary,
            filled: true,
            // floatingLabelAlignment: floatingLabelAlignment,
            // floatingLabelBehavior: floatingLabelBehavior,
            floatingLabelStyle: TextStyle(
              // * colorScheme onSurface
              color: colorSchemeLight.onSurface,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            // focusColor: focusColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme onSurface
                color: colorSchemeLight.onSurface,
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme error
                color: colorSchemeLight.error,
                width: 2.0,
              ),
            ),
            // helperMaxLines: helperMaxLines,
            // helperStyle: helperStyle,
            // hintStyle: hintStyle,
            // hoverColor: hoverColor,
            // iconColor: iconColor,
            // isCollapsed: isCollapsed,
            // isDense: isDense,
            labelStyle: TextStyle(
              // * colorScheme onSurface
              color: colorSchemeLight.onSurface,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
            // outlineBorder: outlineBorder,
            // prefixIconColor: prefixIconColor,
            // prefixStyle: prefixStyle,
            // suffixIconColor: suffixIconColor,
            // suffixStyle: suffixStyle,
          ),
          // listTileTheme: listTileTheme,
          // materialTapTargetSize: materialTapTargetSize,
          // menuBarTheme: menuBarTheme,
          // menuButtonTheme: menuButtonTheme,
          // menuTheme: menuTheme,
          // navigationBarTheme: navigationBarTheme,
          // navigationDrawerTheme: navigationDrawerTheme,
          // navigationRailTheme: navigationRailTheme,
          // outlinedButtonTheme: outlinedButtonTheme,
          // pageTransitionsTheme: pageTransitionsTheme,
          // platform: platform,
          // popupMenuTheme: popupMenuTheme,
          primaryColor: colorSchemeLight.primary,
          // primaryColorDark: primaryColorDark,
          // primaryColorLight: primaryColorLight,
          // primaryIconTheme: primaryIconTheme,
          primaryTextTheme: TextTheme(
            titleMedium: TextStyle(
              // * colorScheme primary
              color: colorSchemeLight.primary,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
            titleSmall: TextStyle(
              // * colorScheme primary
              color: colorSchemeLight.primary,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
            bodyLarge: TextStyle(
              // * colorScheme primary
              color: colorSchemeLight.primary,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
            bodyMedium: TextStyle(
              // * colorScheme primary
              color: colorSchemeLight.primary,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            bodySmall: TextStyle(
              // * colorScheme primary
              color: colorSchemeLight.primary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
            labelLarge: TextStyle(
              // * colorScheme onSurface
              color: colorSchemeLight.onSurface,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
            labelMedium: TextStyle(
              // * colorScheme onSurface
              color: colorSchemeLight.onSurface,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
            labelSmall: TextStyle(
              // * colorScheme onSurface
              color: colorSchemeLight.onSurface,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          // progressIndicatorTheme: progressIndicatorTheme,
          // radioTheme: radioTheme,
          // * colorScheme onPrimary
          scaffoldBackgroundColor: colorSchemeLight.onPrimary,
          // scrollbarTheme: scrollbarTheme,
          // secondaryHeaderColor: secondaryHeaderColor,
          // segmentedButtonTheme: segmentedButtonTheme,
          // shadowColor: shadowColor,
          // sliderTheme: sliderTheme,
          // snackBarTheme: snackBarTheme,
          // splashColor: splashColor,
          // splashFactory: splashFactory,
          // switchTheme: switchTheme,
          // tabBarTheme: tabBarTheme,
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              alignment: Alignment.center,
              animationDuration: const Duration(milliseconds: 10),
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0x00000000)),
              // elevation: elevation,
              // enableFeedback: enableFeedback,
              // fixedSize: fixedSize,
              foregroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme surfaceTint
                    return colorSchemeLight.surfaceTint;
                  }

                  // if (states.contains(MaterialState.hovered)) {
                  //   // * colorScheme Primary
                  //   return colorSchemeLight.primary;
                  // }

                  if (states.contains(MaterialState.focused)) {
                    // * colorScheme Primary
                    return colorSchemeLight.primary;
                  }

                  // if (states.contains(MaterialState.pressed)) {
                  //   // * colorScheme Primary
                  //   return colorSchemeLight.primary;
                  // }

                  // * colorScheme onSurface
                  return colorSchemeLight.onSurface;
                },
              ),
              // iconColor: iconColor,
              // iconSize: iconSize,
              // maximumSize: maximumSize,
              minimumSize: const MaterialStatePropertyAll(Size(314.0, 56.0)),
              // mouseCursor: mouseCursor,
              overlayColor: const MaterialStatePropertyAll(Color(0x00000000)),
              // padding: padding,
              // shadowColor: shadowColor,
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
              // side: null,
              // splashFactory: splashFactory,
              // surfaceTintColor: surfaceTintColor,
              // tapTargetSize: tapTargetSize,
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // visualDensity: visualDensity,
            ),
          ),
          // textSelectionTheme: textSelectionTheme,
          // textTheme: textTheme,
          // timePickerTheme: timePickerTheme,
          // toggleButtonsTheme: toggleButtonsTheme,
          // tooltipTheme: tooltipTheme
          // typography: typography,
          // unselectedWidgetColor: unselectedWidgetColor,
          // useMaterial3: useMaterial3,
          // visualDensity: visualDensity,
        ),
        darkTheme: ThemeData(
          // appBarTheme: appBarTheme,
          // applyElevationOverlayColor: applyElevationOverlayColor,
          // badgeTheme: badgeTheme,
          // bannerTheme: bannerTheme,
          // bottomAppBarTheme: bottomAppBarTheme,
          // bottomNavigationBarTheme: bottomNavigationBarTheme,
          // bottomSheetTheme: bottomSheetTheme,
          // buttonBarTheme: buttonBarTheme,
          // buttonTheme: buttonTheme,
          // canvasColor: canvasColor,
          // cardColor: cardColor,
          // cardTheme: cardTheme,
          // checkboxTheme: checkboxTheme,
          // chipTheme: chipTheme,
          colorScheme: colorSchemeDark,
          // cupertinoOverrideTheme: cupertinoOverrideTheme,
          // dataTableTheme: dataTableTheme,
          // dialogBackgroundColor: dialogBackgroundColor,
          // dialogTheme: dialogTheme,
          // disabledColor: disabledColor,
          // dividerColor: dividerColor,
          // dividerTheme: dividerTheme,
          // drawerTheme: drawerTheme,
          // dropdownMenuTheme: dropdownMenuTheme,
          // elevatedButtonTheme: elevatedButtonTheme,
          // expansionTileTheme: expansionTileTheme,
          // extensions: extensions,
          filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
              alignment: Alignment.center,
              animationDuration: const Duration(milliseconds: 10),
              backgroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme surface
                    return colorSchemeDark.surface;
                  }

                  // if (states.contains(MaterialState.hovered)) {
                  //   // * colorScheme surfaceTint
                  //   return colorSchemeDark.surfaceTint;
                  // }

                  if (states.contains(MaterialState.focused)) {
                    // * colorScheme primary
                    return colorSchemeDark.primary;
                  }

                  // if (states.contains(MaterialState.pressed)) {
                  //   // * colorScheme primary
                  //   return colorSchemeDark.primary;
                  // }

                  // * colorScheme surface
                  return colorSchemeDark.surface;
                },
              ),
              // elevation: elevation,
              // enableFeedback: enableFeedback,
              // fixedSize: fixedSize,
              foregroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme surfaceTint
                    return colorSchemeDark.surfaceTint;
                  }

                  // if (states.contains(MaterialState.hovered)) {
                  //   // * colorScheme onSurface
                  //   return colorSchemeDark.onSurface;
                  // }

                  if (states.contains(MaterialState.focused)) {
                    // * colorScheme onPrimary
                    return colorSchemeDark.onPrimary;
                  }

                  // if (states.contains(MaterialState.pressed)) {
                  //   // * colorScheme onPrimary
                  //   return colorSchemeDark.onPrimary;
                  // }

                  // * colorScheme onSurface
                  return colorSchemeDark.onSurface;
                },
              ),
              // iconColor: iconColor,
              iconSize: const MaterialStatePropertyAll(36.0),
              // maximumSize: maximumSize,
              minimumSize: const MaterialStatePropertyAll(
                Size(314.0, 56.0),
              ),
              // mouseCursor: mouseCursor,
              // overlayColor: overlayColor,
              // padding: padding,
              // shadowColor: shadowColor,
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
              // side: null,
              // splashFactory: splashFactory,
              // surfaceTintColor: surfaceTintColor,
              // tapTargetSize: tapTargetSize,
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // visualDensity: visualDensity,
            ),
          ),
          // floatingActionButtonTheme: floatingActionButtonTheme,
          // focusColor: focusColor,
          fontFamily: "Poppins",
          // highlightColor: highlightColor,
          // hintColor: hintColor,
          // hoverColor: hoverColor,
          // iconButtonTheme: iconButtonTheme,
          // iconTheme: iconTheme,
          // indicatorColor: indicatorColor,
          inputDecorationTheme: InputDecorationTheme(
            // activeIndicatorBorder: activeIndicatorBorder,
            // alignLabelWithHint: alignLabelWithHint,
            // border: border,
            // constraints: constraints,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 12.0,
            ),
            // counterStyle: counterStyle,
            disabledBorder: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme surface
                color: colorSchemeDark.surface,
                width: 0.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme error
                color: colorSchemeDark.error,
                width: 2.0,
              ),
            ),
            // errorMaxLines: errorMaxLines,
            errorStyle: TextStyle(
              fontSize: 14.0,
              // * colorScheme error
              color: colorSchemeDark.error,
              fontWeight: FontWeight.w400,
            ),
            fillColor: colorSchemeDark.onPrimary,
            filled: true,
            // floatingLabelAlignment: floatingLabelAlignment,
            // floatingLabelBehavior: floatingLabelBehavior,
            floatingLabelStyle: TextStyle(
              // * colorScheme onSurface
              color: colorSchemeDark.onSurface,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
            // focusColor: focusColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme onSurface
                color: colorSchemeDark.onSurface,
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                // * colorScheme error
                color: colorSchemeDark.error,
                width: 2.0,
              ),
            ),
            // helperMaxLines: helperMaxLines,
            // helperStyle: helperStyle,
            // hintStyle: hintStyle,
            // hoverColor: hoverColor,
            // iconColor: iconColor,
            // isCollapsed: isCollapsed,
            // isDense: isDense,
            labelStyle: TextStyle(
              // * colorScheme onSurface
              color: colorSchemeDark.onSurface,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
            // outlineBorder: outlineBorder,
            // prefixIconColor: prefixIconColor,
            // prefixStyle: prefixStyle,
            // suffixIconColor: suffixIconColor,
            // suffixStyle: suffixStyle,
          ),
          // listTileTheme: listTileTheme,
          // materialTapTargetSize: materialTapTargetSize,
          // menuBarTheme: menuBarTheme,
          // menuButtonTheme: menuButtonTheme,
          // menuTheme: menuTheme,
          // navigationBarTheme: navigationBarTheme,
          // navigationDrawerTheme: navigationDrawerTheme,
          // navigationRailTheme: navigationRailTheme,
          // outlinedButtonTheme: outlinedButtonTheme,
          // pageTransitionsTheme: pageTransitionsTheme,
          // platform: platform,
          // popupMenuTheme: popupMenuTheme,
          primaryColor: colorSchemeDark.primary,
          // primaryColorDark: primaryColorDark,
          // primaryColorLight: primaryColorLight,
          // primaryIconTheme: primaryIconTheme,
          primaryTextTheme: TextTheme(
            titleMedium: TextStyle(
              fontSize: 24.0,
              // * colorScheme primary
              color: colorSchemeDark.primary,
              fontWeight: FontWeight.w500,
            ),
            titleSmall: TextStyle(
              fontSize: 20.0,
              // * colorScheme primary
              color: colorSchemeDark.primary,
              fontWeight: FontWeight.w500,
            ),
            bodyLarge: TextStyle(
              fontSize: 18.0,
              // * colorScheme primary
              color: colorSchemeDark.primary,
              fontWeight: FontWeight.w500,
            ),
            bodyMedium: TextStyle(
              fontSize: 16.0,
              // * colorScheme primary
              color: colorSchemeDark.primary,
              fontWeight: FontWeight.w500,
            ),
            bodySmall: TextStyle(
              fontSize: 14.0,
              // * colorScheme primary
              color: colorSchemeDark.primary,
              fontWeight: FontWeight.w500,
            ),
            labelLarge: TextStyle(
              fontSize: 18.0,
              // * colorScheme onSurface
              color: colorSchemeDark.onSurface,
              fontWeight: FontWeight.w400,
            ),
            labelMedium: TextStyle(
              fontSize: 16.0,
              // * colorScheme onSurface
              color: colorSchemeDark.onSurface,
              fontWeight: FontWeight.w400,
            ),
            labelSmall: TextStyle(
              fontSize: 14.0,
              // * colorScheme onSurface
              color: colorSchemeDark.onSurface,
              fontWeight: FontWeight.w400,
            ),
          ),
          // progressIndicatorTheme: progressIndicatorTheme,
          // radioTheme: radioTheme,
          // * colorScheme onPrimary
          scaffoldBackgroundColor: colorSchemeDark.onPrimary,
          // scrollbarTheme: scrollbarTheme,
          // secondaryHeaderColor: secondaryHeaderColor,
          // segmentedButtonTheme: segmentedButtonTheme,
          // shadowColor: shadowColor,
          // sliderTheme: sliderTheme,
          // snackBarTheme: snackBarTheme,
          // splashColor: splashColor,
          // splashFactory: splashFactory,
          // switchTheme: switchTheme,
          // tabBarTheme: tabBarTheme,
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              alignment: Alignment.center,
              animationDuration: const Duration(milliseconds: 10),
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0x00000000)),
              // elevation: elevation,
              // enableFeedback: enableFeedback,
              // fixedSize: fixedSize,
              foregroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme surfaceTint
                    return colorSchemeDark.surfaceTint;
                  }

                  // if (states.contains(MaterialState.hovered)) {
                  //   // * colorScheme Primary
                  //   return colorSchemeDark.primary;
                  // }

                  if (states.contains(MaterialState.focused)) {
                    // * colorScheme Primary
                    return colorSchemeDark.primary;
                  }

                  // if (states.contains(MaterialState.pressed)) {
                  //   // * colorScheme Primary
                  //   return colorSchemeDark.primary;
                  // }

                  // * colorScheme onSurface
                  return colorSchemeDark.onSurface;
                },
              ),
              // iconColor: iconColor,
              // iconSize: iconSize,
              // maximumSize: maximumSize,
              minimumSize: const MaterialStatePropertyAll(
                Size(314.0, 56.0),
              ),
              // mouseCursor: mouseCursor,
              overlayColor: const MaterialStatePropertyAll(Color(0x00000000)),
              // padding: padding,
              // shadowColor: shadowColor,
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
              // side: null,
              // splashFactory: splashFactory,
              // surfaceTintColor: surfaceTintColor,
              // tapTargetSize: tapTargetSize,
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // visualDensity: visualDensity,
            ),
          ),
          // textSelectionTheme: textSelectionTheme,
          // textTheme: textTheme,
          // timePickerTheme: timePickerTheme,
          // toggleButtonsTheme: toggleButtonsTheme,
          // tooltipTheme: tooltipTheme
          // typography: typography,
          // unselectedWidgetColor: unselectedWidgetColor,
          // useMaterial3: useMaterial3,
          // visualDensity: visualDensity,
        ),
        themeMode: ThemeMode.system,
        home: const LayoutBase());
  }
}

class LayoutBase extends StatelessWidget {
  const LayoutBase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: ((BuildContext context, BoxConstraints constraints) {
      return const NormalLayout();
    })));
  }
}

class NormalLayout extends StatelessWidget {
  const NormalLayout({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Theme.of(context).primaryColor,
            ),
            Container(
              height: 50,
              width: 50,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Container(
              height: 50,
              width: 50,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Container(
              height: 50,
              width: 50,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            Container(
              height: 50,
              width: 50,
              color: Theme.of(context).colorScheme.surface,
            ),
            Container(
              height: 50,
              width: 50,
              color: Theme.of(context).colorScheme.surfaceTint,
            ),
            Container(
              height: 50,
              width: 50,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            Text(
              "Title Medium",
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
            Text(
              "Title Small",
              style: Theme.of(context).primaryTextTheme.titleSmall,
            ),
            Text(
              "Body Large",
              style: Theme.of(context).primaryTextTheme.bodyLarge,
            ),
            Text(
              "Body Medium",
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
            Text(
              "Body Small",
              style: Theme.of(context).primaryTextTheme.bodySmall,
            ),
            Text(
              "Label Large",
              style: Theme.of(context).primaryTextTheme.labelLarge,
            ),
            Text(
              "Label Medium",
              style: Theme.of(context).primaryTextTheme.labelMedium,
            ),
            Text(
              "Label Small",
              style: Theme.of(context).primaryTextTheme.labelSmall,
            ),
            const NormalBox(),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const MediumBox(),
            const SizedBox(
              height: 20.0,
            ),
            const OutlineBox(),
            const SizedBox(
              height: 20.0,
            ),
            const OutlineMediumBox(),
            const SizedBox(
              height: 20.0,
            ),
            const NormalBoxWithImage(),
            const SizedBox(
              height: 20.0,
            ),
            const NormalBoxWithTextfield(),
            const SizedBox(
              height: 20.0,
            ),
            const OutlineBoxWithTextfield(),
            const SizedBox(
              height: 20.0,
            ),
            FilledButton(
              autofocus: false,
              onPressed: () {},
              child: Row(children: const [
                Icon(Icons.add),
                Expanded(child: Center(child: Text("ADD NEW DEVICE")))
              ]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              autofocus: false,
              onPressed: () {},
              child: const Text(
                "CANCAL",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
