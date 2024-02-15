
# Flutter Smart Button

A customizable smart button widget for Flutter, designed to enhance your application's UI by handling asynchronous operations with a loading indicator, success and failure feedback, and customizable styles.

## Features

- **Loading Indicator**: Displays a loading spinner when performing asynchronous tasks.
- **Success and Failure Indicators**: Customizable icons or widgets to indicate the outcome of the operation.
- **Debounce Functionality**: Prevents multiple taps by setting a debounce duration.
- **Customizable Styles**: Easily customize button colors, border, padding, and text styles.
- **Enhanced User Feedback**: Provides visual feedback through animations and touch effects.
- **Callbacks for Success and Failure**: Execute functions based on the outcome of the asynchronous operation.

## Getting Started

To include `flutter_smart_button` in your project, add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_smart_button: ^0.2.0
```

Run `flutter pub get` to install the package.

## Usage

Import `flutter_smart_button`:

```dart
import 'package:flutter_smart_button/flutter_smart_button.dart';
```

Use the `SmartButton` widget in your Flutter app:

```dart
SmartButton(
  child: Text('Tap Me'),
  onPressed: () async {
    // Your asynchronous operation here
  },
  successIndicator: Icon(Icons.check, color: Colors.green),
  failureIndicator: Icon(Icons.close, color: Colors.red),
  isLoading: false, // Control loading state
  tooltip: 'Click to start operation',
  // Customize the button as needed
)
```

## Customization

`SmartButton` allows for extensive customization including:

- `buttonColor`: Change the background color of the button.
- `textStyle`: Customize text style within the button.
- `borderWidth`, `borderColor`: Customize the button's border.
- `padding`: Set the padding inside the button.
- `loadingIndicator`, `successIndicator`, `failureIndicator`: Provide custom widgets for different states.
- `onSuccess`, `onFailure`: Callbacks for handling the outcome of the asynchronous operation.

## Contributing

Contributions are welcome! If you have ideas for new features or improvements, feel free to fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
