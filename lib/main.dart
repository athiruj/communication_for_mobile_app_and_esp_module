import 'package:commu_app/status.dart';
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
            error: Color(0xFFC51010),
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
                fontWeight: FontWeight.w500),
            titleSmall: TextStyle(
                fontSize: 20,
                color: Color(0xFF050301),
                fontWeight: FontWeight.w500),
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
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
            // alignment: ,
            // animationDuration: ,
            // backgroundColor: ,
            // elevation: ,
            // enableFeedback: ,
            // fixedSize: ,
            // foregroundColor: ,
            // iconColor: ,
            // iconSize: ,
            // maximumSize: ,
            // minimumSize: ,
            // mouseCursor: ,
            // overlayColor: ,
            padding: MaterialStateProperty.all(
              const EdgeInsets.only(
                left: 16,
                right: 28,
                top: 12,
                bottom: 12,
              ),
            ),
            // shadowColor: ,
            // shape: ,
            // side: ,
            // splashFactory: ,
            // surfaceTintColor: ,
            // tapTargetSize: ,
            // textStyle: ,
            // visualDensity: ,
          )),
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
                fontWeight: FontWeight.w500),
            titleSmall: TextStyle(
                fontSize: 20,
                color: Color(0xFFFCFBFC),
                fontWeight: FontWeight.w500),
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
          // outlinedButtonTheme: OutlinedButtonThemeData(
          //     style: ButtonStyle(
          //   // alignment: ,
          //   // animationDuration: ,
          //   // backgroundColor: ,
          //   // elevation: ,
          //   // enableFeedback: ,
          //   // fixedSize: ,
          //   // foregroundColor: ,
          //   // iconColor: ,
          //   iconSize: const MaterialStatePropertyAll(56.0),
          //   // maximumSize: ,
          //   minimumSize: const MaterialStatePropertyAll(Size(324.0, 80.0)),
          //   // mouseCursor: ,
          //   // overlayColor: ,
          //   padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          //   // shadowColor: ,
          //   shape: MaterialStatePropertyAll(
          //     RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //   ),
          //   side: const MaterialStatePropertyAll(BorderSide(
          //     width: 4,
          //     color: Color(0xFF272727),
          //   )),
          //   // splashFactory: ,
          //   // surfaceTintColor: ,
          //   // tapTargetSize: ,
          //   // textStyle: ,
          //   // visualDensity: ,
          // )),
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
//   const MyHomepage({super.key,});

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
  // final VoidCallback? onPressed = false ? (){print()} : null;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            NormalBox("Text Here"),
            NormalBoxWithTextfield("Text Here"),
          ],
        ),
      ),
    );
  }
}

class NormalBoxWithTextfield extends StatelessWidget {
  final String text;
  final StatusBar? statusBar;
  const NormalBoxWithTextfield(
    this.text, {
    super.key,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).primaryTextTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 32,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: IntrinsicWidth(
                stepWidth: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 104,
                      padding: const EdgeInsets.only(
                        left: 32.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.amber,
                            height: 52,
                            width: 52,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Flexible(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                text,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextField(
                      // controller: textEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 16.0,
                        ),
                        filled: true,
                        fillColor: colorScheme.onPrimary,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: colorScheme.onSurface,
                            width: 2.0,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: colorScheme.error,
                            width: 2.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: colorScheme.error,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: colorScheme.surface,
                            width: 0.0,
                          ),
                        ),
                        // errorText: "error",
                        errorStyle: textTheme.labelSmall?.copyWith(
                          color: colorScheme.error,
                        ),
                        // constraints: const BoxConstraints(
                        //   minHeight: 89.0,
                        // ),
                        labelText: "Password",
                        labelStyle: textTheme.labelLarge,
                        floatingLabelStyle: textTheme.bodyLarge,
                      ),
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        // color: Theme.of(context).colorScheme.primary,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Button Here",
                        style: textTheme.titleSmall,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            statusBar ?? const StatusBar()
          ],
        ),
      ),
    );
  }
}
