// // ignore_for_file: must_be_immutable

// import 'package:commu_app/status.dart';
// import 'package:flutter/material.dart';

// class IconBox extends StatefulWidget {
//   final IconData icon;

//   final double? iconSize;

//   final Color? iconColor;

//   final StatusBar? statusBar;

//   void Function()? onTap;

//   IconBox({
//     super.key,
//     required this.icon,
//     this.iconSize,
//     this.iconColor,
//     this.statusBar,
//     required this.onTap,
//   });

//   @override
//   State<IconBox> createState() => _IconBoxState();
// }

// class _IconBoxState extends State<IconBox> {

//   @override
//   Widget build(BuildContext context) {
//     ColorScheme colorScheme = Theme.of(context).colorScheme;
//     return GestureDetector(
//       onTap: widget.onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: colorScheme.surface,
//         ),
//         padding: const EdgeInsets.only(
//           bottom: 12.0,
//           left: 16.0,
//           right: 16.0,
//           top: 42.0,
//         ),
//         constraints: const BoxConstraints(
//             maxHeight: 136.0,
//             maxWidth: 440.0,
//             minHeight: 136.0,
//             minWidth: 136.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Icon(
//               widget.icon,
//               size: widget.iconSize ?? 52,
//               color: widget.iconColor ?? colorScheme.onSurface,
//             ),
//             const StatusBar(
//               width: double.infinity,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
