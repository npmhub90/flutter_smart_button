
# Flutter Smart Button

A customizable smart button widget for Flutter applications, designed to handle asynchronous operations with a loading indicator, and customizable styles.

## Features

- Shows a loading indicator when performing asynchronous operations.
- Customizable button styles (color, text style, borders, etc.).
- Debounce capability to prevent multiple taps.
- Easy to implement with a simple API.

## Getting Started

To use the `flutter_smart_button` package, add it to your Flutter project's dependencies.

### Installation

Add `flutter_smart_button` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_smart_button: ^0.1.0
```

Then, run `flutter pub get` to download the package.

### Usage

Import `flutter_smart_button` in your Dart file:

```dart
import 'package:flutter_smart_button/smart_button.dart';
```

Use `SmartButton` widget:

```dart
SmartButton(
  child: Text('Tap Me'),
  onPressed: () async {
    // Your asynchronous operation here
  },
  isLoading: _isLoading, // Control the loading state
)
```

## Contributing

Contributions are welcome! Please read the contributing guidelines before submitting pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
