// import 'package:commu_app/boxs_beta.dart';
import 'dart:ffi';

import 'package:commu_app/boxs_beta.dart';
import 'package:commu_app/components/filled_button_box.dart';
import 'package:flutter/material.dart';

import '../components/text_button_box.dart';

// class NormalLayout extends StatelessWidget {
//   const NormalLayout({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     ColorScheme colorScheme = Theme.of(context).colorScheme;

//     TextTheme textTheme = Theme.of(context).primaryTextTheme;

//     return Padding(
//       padding: const EdgeInsets.only(
//         top: 32.0,
//         left: 16.0,
//         right: 16.0,
//       ),
//       child: ConstrainedBox(
//         constraints: const BoxConstraints.expand(),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const SizedBox(
//                   height: 4.0,
//                 ),
//                 Container(
//                   constraints: const BoxConstraints.expand(height: 48),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       const SizedBox(
//                         width: 16.0,
//                       ),
//                       Container(
//                         width: 52,
//                         height: 52,
//                         decoration: const BoxDecoration(
//                             color: Colors.amberAccent, shape: BoxShape.circle),
//                       ),
//                       const Expanded(
//                         child: SizedBox(),
//                       ),
//                       Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               print("bell");
//                             },
//                             child: ConstrainedBox(
//                               constraints:
//                                   BoxConstraints.tight(const Size(48, 48)),
//                               child: const Center(
//                                 child: Icon(
//                                   Icons.add_alert_outlined,
//                                   size: 32.0,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               print("setting");
//                             },
//                             child: ConstrainedBox(
//                               constraints:
//                                   BoxConstraints.tight(const Size(48, 48)),
//                               child: const Center(
//                                 child: Icon(
//                                   Icons.settings,
//                                   size: 32.0,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         width: 8.0,
//                       ),
//                       Container(
//                         width: 48,
//                         height: 48,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           color: colorScheme.surface,
//                         ),
//                         child: const Center(
//                           child: Icon(
//                             Icons.add,
//                             size: 32.0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 32.0,
//                 ),
//                 SizedBox(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       const SizedBox(
//                         width: 12.0,
//                       ),
//                       Text(
//                         "Text here",
//                         style: textTheme.bodyLarge
//                             ?.copyWith(color: colorScheme.onSurface),
//                       ),
//                       const Expanded(
//                         child: SizedBox(),
//                       ),
//                       Text(
//                         "Text here",
//                         style: textTheme.bodyMedium,
//                       ),
//                       const SizedBox(
//                         width: 12.0,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//               ],
//             ),
//             Expanded(
//                 child: Center(
//               child: Text(
//                 "Cover Page Label",
//                 style:
//                     textTheme.bodyMedium?.copyWith(color: colorScheme.surface),
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButtonBox(
              onPressed: () {},
              child: const SizedBox(
                width: 100,
                child: Text("FilledButtonBox"),
              ))
        ],
      ),
    );
  }
}
