import 'package:commu_app/boxs.dart';
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
