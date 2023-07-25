import 'package:flutter/material.dart';

// import 'boxs_beta.dart';
import 'pages/main_page.dart';

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
          // filledButtonTheme: filledButtonTheme,
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
          // primaryTextTheme: primaryTextTheme,
          // progressIndicatorTheme: progressIndicatorTheme,
          // radioTheme: radioTheme,
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
          // textButtonTheme: textButtonTheme,
          // textSelectionTheme: textSelectionTheme,
          textTheme:  TextTheme(
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
          // filledButtonTheme: filledButtonTheme,
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
          // primaryTextTheme: primaryTextTheme,
          // progressIndicatorTheme: progressIndicatorTheme,
          // radioTheme: radioTheme,
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
          // textButtonTheme: textButtonTheme,
          // textSelectionTheme: textSelectionTheme,
          textTheme: TextTheme(
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
      return const TestPage();
      // return const NormalLayout();
    })));
  }
}
