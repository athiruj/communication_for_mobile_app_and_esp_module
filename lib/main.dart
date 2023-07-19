import 'dart:ui';

import 'package:commu_app/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'package:flutter/src/gestures/recognizer.dart';

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
            colorScheme: const ColorScheme.light(
              primary: Color(0xFF050301),
              onPrimary: Color(0xFFFCFBFC),
              secondary: Color(0xFF0085FF),
              onSecondary: Color(0xFFA0D2FF),
              tertiary: Color(0xFF5EDC1F),
              onTertiary: Color(0xFFDBFFC9),
              surface: Color(0xFFECECEC),
              surfaceTint: Color(0xFFD1D0D0),
              onSurface: Color(0xFFB6B5B4),
              error: Color(0xFFC51010),
            ),
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
                // animationDuration: animationDuration,
                backgroundColor: MaterialStateColor.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      // * colorScheme primary
                      return const Color(0xFF050301);
                    }

                    if (states.contains(MaterialState.disabled)) {
                      // * colorScheme surface
                      return const Color(0xFFECECEC);
                    }
                    // * colorScheme primary
                    return const Color(0xFF050301);
                  },
                ),
                // elevation: elevation,
                // enableFeedback: enableFeedback,
                // fixedSize: fixedSize,
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      // * colorScheme onPrimary
                      return const Color(0xFFFCFBFC);
                    }

                    if (states.contains(MaterialState.disabled)) {
                      // * colorScheme onSurface
                      return const Color(0xFFB6B5B4).withOpacity(0.3);
                    }

                    // * colorScheme onPrimary
                    return const Color(0xFFFCFBFC);
                  },
                ),
                // iconColor: iconColor,
                // iconSize: iconSize,
                // maximumSize: maximumSize,
                minimumSize: const MaterialStatePropertyAll(Size(314, 56)),
                // mouseCursor: mouseCursor,
                // overlayColor: overlayColor,
                // padding: padding,
                // shadowColor: shadowColor,
                shape: const MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                // side: null,
                // splashFactory: splashFactory,
                // surfaceTintColor: surfaceTintColor,
                // tapTargetSize: tapTargetSize,
                textStyle: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      );
                    }

                    if (states.contains(MaterialState.disabled)) {
                      return const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      );
                    }

                    return const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    );
                  },
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
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  // * colorScheme surface
                  color: Color(0xFFECECEC),
                  width: 0.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  // * colorScheme error
                  color: Color(0xFFC51010),
                  width: 2.0,
                ),
              ),
              // errorMaxLines: errorMaxLines,
              errorStyle: const TextStyle(
                fontSize: 14,
                // * colorScheme error
                color: Color(0xFFC51010),
                fontWeight: FontWeight.w400,
              ),
              fillColor: const Color(0xFFFCFBFC),
              filled: true,
              // floatingLabelAlignment: floatingLabelAlignment,
              // floatingLabelBehavior: floatingLabelBehavior,
              floatingLabelStyle: const TextStyle(
                // * colorScheme primary
                color: Color(0xFFB6B5B4),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              // focusColor: focusColor,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  // * colorScheme onSurface
                  color: Color(0xFFB6B5B4),
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  // * colorScheme error
                  color: Color(0xFFC51010),
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
              labelStyle: const TextStyle(
                // * colorScheme onSurface
                color: Color(0xFFB6B5B4),
                fontSize: 18,
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
            primaryColor: const Color(0xFF050301),
            // primaryColorDark: primaryColorDark,
            // primaryColorLight: primaryColorLight,
            // primaryIconTheme: primaryIconTheme,
            primaryTextTheme: const TextTheme(
              titleMedium: TextStyle(
                color: Color(0xFF050301),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              titleSmall: TextStyle(
                color: Color(0xFF050301),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              bodyLarge: TextStyle(
                color: Color(0xFF050301),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              bodyMedium: TextStyle(
                color: Color(0xFF050301),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              bodySmall: TextStyle(
                color: Color(0xFF050301),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              labelLarge: TextStyle(
                color: Color(0xFFB6B5B4),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              labelMedium: TextStyle(
                color: Color(0xFFB6B5B4),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              labelSmall: TextStyle(
                color: Color(0xFFB6B5B4),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            // progressIndicatorTheme: progressIndicatorTheme,
            // radioTheme: radioTheme,
            scaffoldBackgroundColor: const Color(0xFFFCFBFC)
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
            // textButtonTheme: textButtonTheme,
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
          colorScheme: const ColorScheme.dark(
            primary: Color(0xFFFCFBFC),
            onPrimary: Color(0xFF050301),
            secondary: Color(0xFF0085FF),
            onSecondary: Color(0xFFA0D2FF),
            tertiary: Color(0xFF5EDC1F),
            onTertiary: Color(0xFFDBFFC9),
            surface: Color(0xFF272727),
            surfaceTint: Color(0xFF636262),
            onSurface: Color(0xFF9F9E9D),
            error: Color(0xFFC51010),
          ),
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
              // animationDuration: animationDuration,
              backgroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    // * colorScheme primary
                    return const Color(0xFFFCFBFC);
                  }

                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme surface
                    return const Color(0xFF272727);
                  }
                  // * colorScheme primary
                  return const Color(0xFFFCFBFC);
                },
              ),
              // elevation: elevation,
              // enableFeedback: enableFeedback,
              // fixedSize: fixedSize,
              foregroundColor: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    // * colorScheme onPrimary
                    return const Color(0xFF050301);
                  }

                  if (states.contains(MaterialState.disabled)) {
                    // * colorScheme onSurface
                    return const Color(0xFF9F9E9D).withOpacity(0.3);
                  }

                  // * colorScheme onPrimary
                  return const Color(0xFF050301);
                },
              ),
              // iconColor: iconColor,
              // iconSize: iconSize,
              // maximumSize: maximumSize,
              minimumSize: const MaterialStatePropertyAll(Size(314, 56)),
              // mouseCursor: mouseCursor,
              // overlayColor: overlayColor,
              // padding: padding,
              // shadowColor: shadowColor,
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              // side: null,
              // splashFactory: splashFactory,
              // surfaceTintColor: surfaceTintColor,
              // tapTargetSize: tapTargetSize,
              textStyle: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    );
                  }

                  if (states.contains(MaterialState.disabled)) {
                    return const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    );
                  }

                  return const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  );
                },
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
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                // * colorScheme surface
                color: Color(0xFF272727),
                width: 0.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                // * colorScheme error
                color: Color(0xFFC51010),
                width: 2.0,
              ),
            ),
            // errorMaxLines: errorMaxLines,
            errorStyle: const TextStyle(
              fontSize: 14,
              // * colorScheme error
              color: Color(0xFFC51010),
              fontWeight: FontWeight.w400,
            ),
            fillColor: const Color(0xFF050301),
            filled: true,
            // floatingLabelAlignment: floatingLabelAlignment,
            // floatingLabelBehavior: floatingLabelBehavior,
            floatingLabelStyle: const TextStyle(
              // * colorScheme primary
              color: Color(0xFF9F9E9D),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            // focusColor: focusColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                // * colorScheme onSurface
                color: Color(0xFF9F9E9D),
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                // * colorScheme error
                color: Color(0xFFC51010),
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
            labelStyle: const TextStyle(
              // * colorScheme onSurface
              color: Color(0xFF9F9E9D),
              fontSize: 18,
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
          primaryColor: const Color(0xFFFCFBFC),
          // primaryColorDark: primaryColorDark,
          // primaryColorLight: primaryColorLight,
          // primaryIconTheme: primaryIconTheme,
          primaryTextTheme: const TextTheme(
            titleMedium: TextStyle(
              fontSize: 24,
              color: Color(0xFFFCFBFC),
              fontWeight: FontWeight.w500,
            ),
            titleSmall: TextStyle(
              fontSize: 20,
              color: Color(0xFFFCFBFC),
              fontWeight: FontWeight.w500,
            ),
            bodyLarge: TextStyle(
              fontSize: 18,
              color: Color(0xFFFCFBFC),
              fontWeight: FontWeight.w500,
            ),
            bodyMedium: TextStyle(
              fontSize: 16,
              color: Color(0xFFFCFBFC),
              fontWeight: FontWeight.w500,
            ),
            bodySmall: TextStyle(
              fontSize: 14,
              color: Color(0xFFFCFBFC),
              fontWeight: FontWeight.w500,
            ),
            labelLarge: TextStyle(
              fontSize: 18,
              color: Color(0xFF9F9E9D),
              fontWeight: FontWeight.w400,
            ),
            labelMedium: TextStyle(
              fontSize: 16,
              color: Color(0xFF9F9E9D),
              fontWeight: FontWeight.w400,
            ),
            labelSmall: TextStyle(
              fontSize: 14,
              color: Color(0xFF9F9E9D),
              fontWeight: FontWeight.w400,
            ),
          ),
          // progressIndicatorTheme: progressIndicatorTheme,
          // radioTheme: radioTheme,
          scaffoldBackgroundColor: const Color(0xFF0F0F0F),
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
          // textButtonTheme: textButtonTheme,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // NormalBox(),
            // MediumBox(),
            // OutlineBox(),
            // OutlineMediumBox(),
            // NormalBoxWithImage(),
            FilledButton(
              onPressed: null,
              child: const Text(
                "START THE CONNECTION",
              ),
            )
            // NormalBoxWithTextfield(),
            // OutlineBoxWithTextfield()
          ],
        ),
      ),
    );
  }
}
