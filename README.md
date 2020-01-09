# SWBadge

A Flutter widget to create Badges.

[![pub package](https://img.shields.io/pub/v/sw_badge.svg)](https://pub.dartlang.org/packages/sw_badge)

## Getting Started

### Add dependency to pubspec.yaml

```yaml
dependencies:
  sw_badge: any
```

### Install the package using Terminal

```bash
flutter packages get
```

### Import Package

```dart
import 'package:sw_badge/sw_badge.dart';
```

## Example

You can create two types of Badges:

### Badge After Child

```dart
SWBadge(
  child: new Text("button"),
  value: "Text",
  badgePosition: SWBadgePosition.after,
  badgeStyle: SWBadgeStyle.circle,
)
```

### Badge Before Child

```dart
SWBadge(
  child: new Text("button"),
  value: "Text",
  badgePosition: SWBadgePosition.before,
  badgeStyle: SWBadgeStyle.circle,
)
```
