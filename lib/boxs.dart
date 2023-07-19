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
        bottom: 12,
        left: 52,
        right: 32,
        top: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.surface,
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
        bottom: 12,
        left: 20,
        right: 32,
        top: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.surface,
      ),
      constraints: const BoxConstraints.expand(
        height: 80,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.amber,
            height: 52,
            width: 52,
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
        bottom: 12,
        left: 48,
        right: 28,
        top: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: colorScheme.surface,
        ),
        borderRadius: BorderRadius.circular(20),
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
        bottom: 12,
        left: 16,
        right: 28,
        top: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: colorScheme.surface,
        ),
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
        bottom: 8,
        left: 8,
        right: 32,
        top: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.surface,
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
              color: colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 120,
            width: 120,
          ),
          Text(
            displayText ?? "Dispaly",
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
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
        bottom: 16,
        left: 20,
        right: 32,
        top: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
                                displayText ?? "Display Text",
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
                        constraints: BoxConstraints(minHeight: 89),
                        labelText: "Password",
                      ),
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
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

/// **NormalBoxWithTextfield class**
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
        bottom: 16,
        left: 16,
        right: 16,
        top: 16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: colorScheme.surface,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
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
                    displayText ?? "Display Text",
                    style: textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          TextField(
            decoration: InputDecoration(
              constraints: const BoxConstraints(minHeight: 89),
              fillColor: colorScheme.surface,
              labelText: "Password",
            ),
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              constraints: const BoxConstraints(minHeight: 89),
              fillColor: colorScheme.surface,
              labelText: "Password",
            ),
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Container(
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              "Button Here",
              style: textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }
}
