import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "Poppins",
          // applyElevationOverlayColor: applyElevationOverlayColor,
          // cupertinoOverrideTheme: cupertinoOverrideTheme,
          // extensions: extensions,
          // inputDecorationTheme: inputDecorationTheme,
          // materialTapTargetSize: materialTapTargetSize,
          // pageTransitionsTheme: pageTransitionsTheme,
          // platform: platform,
          // scrollbarTheme: scrollbarTheme,
          // splashFactory: splashFactory,
          useMaterial3: false,
          // visualDensity: visualDensity,
          // canvasColor: canvasColor,
          // cardColor: cardColor,
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
          ),
          // dialogBackgroundColor: dialogBackgroundColor,
          // disabledColor: disabledColor,
          // dividerColor: dividerColor,
          // focusColor: focusColor,
          // highlightColor: highlightColor,
          // hintColor: hintColor,
          // hoverColor: hoverColor,
          // indicatorColor: indicatorColor,
          primaryColor: const Color(0xFF050301),
          // primaryColorDark: primaryColorDark,
          // primaryColorLight: primaryColorLight,
          scaffoldBackgroundColor: const Color(0xFFFCFBFC),
          // secondaryHeaderColor: secondaryHeaderColor,
          // shadowColor: shadowColor,
          // splashColor: splashColor,
          // unselectedWidgetColor: unselectedWidgetColor,
          // iconTheme: iconTheme,
          // primaryIconTheme: primaryIconTheme,
          primaryTextTheme: const TextTheme(
            titleMedium: TextStyle(
                fontSize: 24,
                color: Color(0xFF050301),
                fontWeight: FontWeight.w600),
            titleSmall: TextStyle(
                fontSize: 20,
                color: Color(0xFF050301),
                fontWeight: FontWeight.w600),
            bodyLarge: TextStyle(
                fontSize: 18,
                color: Color(0xFF050301),
                fontWeight: FontWeight.w500),
            bodyMedium: TextStyle(
                fontSize: 16,
                color: Color(0xFF050301),
                fontWeight: FontWeight.w500),
            bodySmall: TextStyle(
                fontSize: 14,
                color: Color(0xFF050301),
                fontWeight: FontWeight.w500),
            labelLarge: TextStyle(
                fontSize: 18,
                color: Color(0xFFB6B5B4),
                fontWeight: FontWeight.w400),
            labelMedium: TextStyle(
                fontSize: 16,
                color: Color(0xFFB6B5B4),
                fontWeight: FontWeight.w400),
            labelSmall: TextStyle(
                fontSize: 14,
                color: Color(0xFFB6B5B4),
                fontWeight: FontWeight.w400),
          ),
          // textTheme: TextTheme(),
          // typography: typography,
          // appBarTheme: appBarTheme,
          // badgeTheme: badgeTheme,
          // bannerTheme: bannerTheme,
          // bottomAppBarTheme: bottomAppBarTheme,
          // bottomNavigationBarTheme: bottomNavigationBarTheme,
          // bottomSheetTheme: bottomSheetTheme,
          // buttonBarTheme: buttonBarTheme,
          // buttonTheme: buttonTheme,
          // cardTheme: cardTheme,
          // checkboxTheme: checkboxTheme,
          // chipTheme: chipTheme,
          // dataTableTheme: dataTableTheme,
          // dialogTheme: dialogTheme,
          // dividerTheme: dividerTheme,
          // drawerTheme: drawerTheme,
          // dropdownMenuTheme: dropdownMenuTheme,
          // elevatedButtonTheme: elevatedButtonTheme,
          // expansionTileTheme: expansionTileTheme,
          // filledButtonTheme: filledButtonTheme,
          // floatingActionButtonTheme: floatingActionButtonTheme,
          // iconButtonTheme: iconButtonTheme,
          // listTileTheme: listTileTheme,
          // menuBarTheme: menuBarTheme,
          // menuButtonTheme: menuButtonTheme,
          // menuTheme: menuTheme,
          // navigationBarTheme: navigationBarTheme,
          // navigationDrawerTheme: navigationDrawerTheme,
          // navigationRailTheme: navigationRailTheme,
          // outlinedButtonTheme: outlinedButtonTheme,
          // popupMenuTheme: popupMenuTheme,
          // progressIndicatorTheme: progressIndicatorTheme,
          // radioTheme: radioTheme,
          // segmentedButtonTheme: segmentedButtonTheme,
          // sliderTheme: sliderTheme,
          // snackBarTheme: snackBarTheme,
          // switchTheme: switchTheme,
          // tabBarTheme: tabBarTheme,
          // textButtonTheme: textButtonTheme,
          // textSelectionTheme: textSelectionTheme,
          // timePickerTheme: timePickerTheme,
          // toggleButtonsTheme: toggleButtonsTheme,
          // tooltipTheme: tooltipTheme,
        ),
        darkTheme: ThemeData(
          fontFamily: "Poppins",
          // applyElevationOverlayColor: applyElevationOverlayColor,
          // cupertinoOverrideTheme: cupertinoOverrideTheme,
          // extensions: extensions,
          // inputDecorationTheme: inputDecorationTheme,
          // materialTapTargetSize: materialTapTargetSize,
          // pageTransitionsTheme: pageTransitionsTheme,
          // platform: platform,
          // scrollbarTheme: scrollbarTheme,
          // splashFactory: splashFactory,
          useMaterial3: false,
          // visualDensity: visualDensity,
          // canvasColor: canvasColor,
          // cardColor: cardColor,
          colorScheme: const ColorScheme.light(
              primary: Color(0xFFFCFBFC),
              onPrimary: Color(0xFF050301),
              secondary: Color(0xFF0085FF),
              onSecondary: Color(0xFFA0D2FF),
              tertiary: Color(0xFF5EDC1F),
              onTertiary: Color(0xFFDBFFC9),
              surface: Color(0xFF272727),
              surfaceTint: Color(0xFF636262),
              onSurface: Color(0xFF9F9E9D)),
          // dialogBackgroundColor: dialogBackgroundColor,
          // disabledColor: disabledColor,
          // dividerColor: dividerColor,
          // focusColor: focusColor,
          // highlightColor: highlightColor,
          // hintColor: hintColor,
          // hoverColor: hoverColor,
          // indicatorColor: indicatorColor,
          ///
          ///
          primaryColor: const Color(0xFFFCFBFC),
          // primaryColorDark: primaryColorDark,
          // primaryColorLight: primaryColorLight,
          scaffoldBackgroundColor: const Color(0xFF0F0F0F),
          // secondaryHeaderColor: secondaryHeaderColor,
          // shadowColor: shadowColor,
          // splashColor: splashColor,
          // unselectedWidgetColor: unselectedWidgetColor,
          // iconTheme: iconTheme,
          // primaryIconTheme: primaryIconTheme,
          primaryTextTheme: const TextTheme(
            titleMedium: TextStyle(
                fontSize: 24,
                color: Color(0xFFFCFBFC),
                fontWeight: FontWeight.w600),
            titleSmall: TextStyle(
                fontSize: 20,
                color: Color(0xFFFCFBFC),
                fontWeight: FontWeight.w600),
            bodyLarge: TextStyle(
                fontSize: 18,
                color: Color(0xFFFCFBFC),
                fontWeight: FontWeight.w500),
            bodyMedium: TextStyle(
                fontSize: 16,
                color: Color(0xFFFCFBFC),
                fontWeight: FontWeight.w500),
            bodySmall: TextStyle(
                fontSize: 14,
                color: Color(0xFFFCFBFC),
                fontWeight: FontWeight.w500),
            labelLarge: TextStyle(
                fontSize: 18,
                color: Color(0xFF9F9E9D),
                fontWeight: FontWeight.w400),
            labelMedium: TextStyle(
                fontSize: 16,
                color: Color(0xFF9F9E9D),
                fontWeight: FontWeight.w400),
            labelSmall: TextStyle(
                fontSize: 14,
                color: Color(0xFF9F9E9D),
                fontWeight: FontWeight.w400),
          ),
          // textTheme: TextTheme(),
          // typography: typography,
          // appBarTheme: appBarTheme,
          // badgeTheme: badgeTheme,
          // bannerTheme: bannerTheme,
          // bottomAppBarTheme: bottomAppBarTheme,
          // bottomNavigationBarTheme: bottomNavigationBarTheme,
          // bottomSheetTheme: bottomSheetTheme,
          // buttonBarTheme: buttonBarTheme,
          // buttonTheme: buttonTheme,
          // cardTheme: cardTheme,
          // checkboxTheme: checkboxTheme,
          // chipTheme: chipTheme,
          // dataTableTheme: dataTableTheme,
          // dialogTheme: dialogTheme,
          // dividerTheme: dividerTheme,
          // drawerTheme: drawerTheme,
          // dropdownMenuTheme: dropdownMenuTheme,
          // elevatedButtonTheme: elevatedButtonTheme,
          // expansionTileTheme: expansionTileTheme,
          // filledButtonTheme: filledButtonTheme,
          // floatingActionButtonTheme: floatingActionButtonTheme,
          // iconButtonTheme: iconButtonTheme,
          // listTileTheme: listTileTheme,
          // menuBarTheme: menuBarTheme,
          // menuButtonTheme: menuButtonTheme,
          // menuTheme: menuTheme,
          // navigationBarTheme: navigationBarTheme,
          // navigationDrawerTheme: navigationDrawerTheme,
          // navigationRailTheme: navigationRailTheme,
          // outlinedButtonTheme: outlinedButtonTheme,
          // popupMenuTheme: popupMenuTheme,
          // progressIndicatorTheme: progressIndicatorTheme,
          // radioTheme: radioTheme,
          // segmentedButtonTheme: segmentedButtonTheme,
          // sliderTheme: sliderTheme,
          // snackBarTheme: snackBarTheme,
          // switchTheme: switchTheme,
          // tabBarTheme: tabBarTheme,
          // textButtonTheme: textButtonTheme,
          // textSelectionTheme: textSelectionTheme,
          // timePickerTheme: timePickerTheme,
          // toggleButtonsTheme: toggleButtonsTheme,
          // tooltipTheme: tooltipTheme,
        ),
        themeMode: ThemeMode.system,
        home: const LayoutBase());
  }
}

// class MyHomepage extends StatefulWidget {
//   const MyHomepage({super.key});

//   @override
//   State<MyHomepage> createState() => _MyHomepageState();
// }

// class _MyHomepageState extends State<MyHomepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 50,
//                 width: 50,
//                 color: Theme.of(context).primaryColor,
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 color: Theme.of(context).colorScheme.onPrimary,
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 color: Theme.of(context).colorScheme.secondary,
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 color: Theme.of(context).colorScheme.tertiary,
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 color: Theme.of(context).colorScheme.surface,
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 color: Theme.of(context).colorScheme.surfaceTint,
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 color: Theme.of(context).colorScheme.onSurface,
//               ),
//               Text(
//                 "Title Medium",
//                 style: Theme.of(context).primaryTextTheme.titleMedium,
//               ),
//               Text(
//                 "Title Small",
//                 style: Theme.of(context).primaryTextTheme.titleSmall,
//               ),
//               Text(
//                 "Body Large",
//                 style: Theme.of(context).primaryTextTheme.bodyLarge,
//               ),
//               Text(
//                 "Body Medium",
//                 style: Theme.of(context).primaryTextTheme.bodyMedium,
//               ),
//               Text(
//                 "Body Small",
//                 style: Theme.of(context).primaryTextTheme.bodySmall,
//               ),
//               Text(
//                 "Label Large",
//                 style: Theme.of(context).primaryTextTheme.labelLarge,
//               ),
//               Text(
//                 "Label Medium",
//                 style: Theme.of(context).primaryTextTheme.labelMedium,
//               ),
//               Text(
//                 "Label Small",
//                 style: Theme.of(context).primaryTextTheme.labelSmall,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LayoutBase extends StatelessWidget {
  const LayoutBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: ((BuildContext context, BoxConstraints constraints) {
      return const NormalLayout();
    })));
  }
}

class NormalLayout extends StatelessWidget {
  const NormalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: OutlineMediumBox("Text"),
    );
  }
}

class NormalBox extends StatelessWidget {
  final String text;
  final StatusBar? statusBar;
  const NormalBox(this.text, {super.key, this.statusBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 52,
        right: 32,
        top: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Theme.of(context).colorScheme.surface,
      ),
      constraints: const BoxConstraints.expand(
        height: 136,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 52,
            width: 52,
          ),
          Text(
            text,
            style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

class NormalBoxWithImage extends StatelessWidget {
  final String text;
  final StatusBar? statusBar;
  const NormalBoxWithImage(this.text, {super.key, this.statusBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 8,
        right: 32,
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Theme.of(context).colorScheme.surface,
      ),
      constraints: const BoxConstraints.expand(
        height: 136,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(32),
            ),
            height: 120,
            width: 120,
          ),
          Text(
            text,
            style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: statusBar ?? const StatusBar(),
          )
        ],
      ),
    );
  }
}

class OutlineBox extends StatelessWidget {
  final String text;
  final StatusBar? statusBar;
  const OutlineBox(this.text, {super.key, this.statusBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 52,
        right: 32,
        top: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        border:
            Border.all(width: 4, color: Theme.of(context).colorScheme.surface),
        borderRadius: BorderRadius.circular(32),
      ),
      constraints: const BoxConstraints.expand(
        height: 136,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 52,
            width: 52,
          ),
          Text(
            text,
            style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

class MediumBox extends StatelessWidget {
  final String text;
  final StatusBar? statusBar;
  const MediumBox(this.text, {super.key, this.statusBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 32,
        top: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.surface,
      ),
      constraints: const BoxConstraints.expand(
        height: 80,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 52,
            width: 52,
          ),
          Text(
            text,
            style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

class OutlineMediumBox extends StatelessWidget {
  final String text;
  final StatusBar? statusBar;
  const OutlineMediumBox(this.text, {super.key, this.statusBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 32,
        top: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        border:
            Border.all(width: 4, color: Theme.of(context).colorScheme.surface),
        borderRadius: BorderRadius.circular(20),
      ),
      constraints: const BoxConstraints.expand(
        height: 80,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 52,
            width: 52,
          ),
          Text(
            text,
            style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

/// Status Bar cover the parent height
/// * StatusBar()
/// * StatusBar.blue()
/// * StatusBar.green()
/// * StatusBar.none()
class StatusBar extends StatelessWidget {
  final int width = 6;
  final Color? color;
  const StatusBar({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(width: 6),
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
