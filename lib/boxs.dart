import 'package:commu_app/status.dart';
import 'package:flutter/material.dart';

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
        left: 48,
        right: 28,
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
        left: 16,
        right: 28,
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