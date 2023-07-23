import 'package:commu_app/status.dart';
import 'package:flutter/material.dart';

/// **NormalBox class**
/// - Multipurpose Box
class NormalBox extends StatelessWidget {
  final String? displayText;

  final StatusBar? statusBar;

  const NormalBox({
    super.key,
    this.displayText,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    TextTheme textTheme = Theme.of(context).primaryTextTheme;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 12.0,
        left: 52.0,
        right: 32.0,
        top: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: colorScheme.surface,
      ),
      constraints: const BoxConstraints.expand(
        height: 136.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 52.0,
            width: 52.0,
          ),
          Text(
            displayText ?? "Dispaly",
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

/// **MediumBox class**
/// - Medium size Box
class MediumBox extends StatelessWidget {
  final String? displayText;

  final StatusBar? statusBar;

  const MediumBox({
    super.key,
    this.displayText,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    TextTheme textTheme = Theme.of(context).primaryTextTheme;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 12.0,
        left: 20.0,
        right: 32.0,
        top: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: colorScheme.surface,
      ),
      constraints: const BoxConstraints.expand(
        height: 80.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.amber,
            height: 52.0,
            width: 52.0,
          ),
          Text(
            displayText ?? "Dispaly",
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

/// **OutlineBox class**
/// - Unselected Box
class OutlineBox extends StatelessWidget {
  final String? displayText;

  final StatusBar? statusBar;

  const OutlineBox({
    super.key,
    this.displayText,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    TextTheme textTheme = Theme.of(context).primaryTextTheme;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 8.0,
        left: 50.0,
        right: 30.0,
        top: 8.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: colorScheme.surface,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      constraints: const BoxConstraints.expand(
        height: 136.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 52.0,
            width: 52.0,
          ),
          Text(
            displayText ?? "Dispaly",
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

/// **OutlineMediumBox class**
/// - Unselected medium Box
class OutlineMediumBox extends StatelessWidget {
  final String? displayText;

  final StatusBar? statusBar;

  const OutlineMediumBox({
    super.key,
    this.displayText,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    TextTheme textTheme = Theme.of(context).primaryTextTheme;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 8.0,
        left: 18.0,
        right: 30.0,
        top: 8.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: colorScheme.surface,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      constraints: const BoxConstraints.expand(
        height: 80.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 52.0,
            width: 52.0,
          ),
          Text(
            displayText ?? "Dispaly",
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          statusBar ?? const StatusBar()
        ],
      ),
    );
  }
}

/// **NormalBoxWithImage class**
/// - Device showing Box
class NormalBoxWithImage extends StatelessWidget {
  final String? displayText;

  final StatusBar? statusBar;

  const NormalBoxWithImage({
    super.key,
    this.displayText,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    TextTheme textTheme = Theme.of(context).primaryTextTheme;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 8.0,
        left: 8.0,
        right: 32.0,
        top: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: colorScheme.surface,
      ),
      constraints: const BoxConstraints.expand(
        height: 136.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(20.0),
            ),
            height: 120.0,
            width: 120.0,
          ),
          Text(
            displayText ?? "Dispaly",
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: statusBar ?? const StatusBar(),
          )
        ],
      ),
    );
  }
}

/// **NormalBoxWithTextfield class**
/// - Wi-Fi Connecting Box
class NormalBoxWithTextfield extends StatelessWidget {
  final String? displayText;

  final StatusBar? statusBar;

  const NormalBoxWithTextfield({
    super.key,
    this.displayText,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    TextTheme textTheme = Theme.of(context).primaryTextTheme;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 12.0,
        left: 20.0,
        right: 32.0,
        top: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: colorScheme.surface,
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
                      height: 104.0,
                      padding: const EdgeInsets.only(
                        left: 32.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.amber,
                            height: 52.0,
                            width: 52.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Flexible(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                displayText ?? "Display",
                                style: textTheme.titleMedium?.copyWith(
                                  color: colorScheme.onSurface,
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
                      decoration: const InputDecoration(
                        constraints: BoxConstraints(minHeight: 73.0),
                        labelText: "Password",
                      ),
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "BUTTON",
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

/// **OutlineBoxWithTextfield class**
/// - Wi-Fi Connecting Box
class OutlineBoxWithTextfield extends StatelessWidget {
  final String? displayText;

  final StatusBar? statusBar;

  const OutlineBoxWithTextfield({
    super.key,
    this.displayText,
    this.statusBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    TextTheme textTheme = Theme.of(context).primaryTextTheme;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 12.0,
        left: 18.0,
        right: 18.0,
        top: 12.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: colorScheme.surface,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IntrinsicWidth(
        stepWidth: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Container(
                  color: Colors.amber,
                  height: 52.0,
                  width: 52.0,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Flexible(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      displayText ?? "Display",
                      style: textTheme.titleMedium?.copyWith(
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 38.0,
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: InputDecoration(
                constraints: const BoxConstraints(minHeight: 73.0),
                fillColor: colorScheme.surface,
                labelText: "Password",
              ),
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                constraints: const BoxConstraints(minHeight: 73.0),
                fillColor: colorScheme.surface,
                labelText: "Password",
              ),
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "BUTTON",
              ),
            )
          ],
        ),
      ),
    );
  }
}
