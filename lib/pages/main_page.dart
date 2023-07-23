import 'package:commu_app/boxs_beta.dart';
import 'package:flutter/material.dart';

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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IconBox(
              icon: Icons.bluetooth,
              onTap: (){},
            ),
            const SizedBox(
            width: 16.0,),
            IconBox(
              icon: Icons.bluetooth,
              onTap: (){},
            ),
            // FilledButton(
            //   autofocus: false,
            //   onPressed: () {},
            //   child: Row(children: const [
            //     Icon(Icons.add),
            //     Expanded(child: Center(child: Text("ADD NEW DEVICE")))
            //   ]),
            // ),
            // const SizedBox(
            //   height: 20.0,
            // ),
            // TextButton(
            //   autofocus: false,
            //   onPressed: () {},
            //   child: const Text(
            //     "CANCAL",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
