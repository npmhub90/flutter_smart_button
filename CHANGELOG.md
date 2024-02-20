# Changelog

All notable changes to this project will be documented in this file.

## 0.2.1

### Added
- Added `disabled`, `disabledIndicator`, and `disabledColor` properties to `SmartButton` to handle the disabled state.

## 0.2.0

### Added
- Added `successIndicator` and `failureIndicator` properties to `SmartButton` for representing success and failure states.
- Added `onSuccess` callback, which is called after the asynchronous operation completes successfully.
- Added `onFailure` callback, which is called if the asynchronous operation fails.
- Implemented logic to reset the success or failure state after the completion of the asynchronous operation.
- Enhanced touch feedback and added user-defined animation effects for a better user experience.

### Changed
- Modified properties `buttonColor`, `textStyle`, `borderWidth`, `borderColor`, `padding` to customize the style of `ElevatedButton`.

### Fixed
- Fixed issues with UI display during the loading state.

## 0.1.0

### Added
- Initial release of the `SmartButton` widget.
- Features include a loading indicator, asynchronous operation handling, and customizable styles.
