import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SmartButton extends StatefulWidget {
  final Widget child;
  final Widget? loadingIndicator;
  final Widget? successIndicator;
  final Widget? failureIndicator;
  final Future<void> Function() onPressed;
  final Color? buttonColor;
  final TextStyle? textStyle;
  final double? borderWidth;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final Duration debounceDuration;
  final bool isLoading;
  final String? tooltip;

  const SmartButton({
    Key? key,
    required this.child,
    this.loadingIndicator,
    this.successIndicator,
    this.failureIndicator,
    required this.onPressed,
    this.buttonColor,
    this.textStyle,
    this.borderWidth,
    this.borderColor,
    this.padding = const EdgeInsets.all(8.0),
    this.debounceDuration = const Duration(milliseconds: 300),
    this.isLoading = false,
    this.tooltip,
  }) : super(key: key);

  @override
  _SmartButtonState createState() => _SmartButtonState();
}

class _SmartButtonState extends State<SmartButton> {
  bool _isLoading = false;
  DateTime? _lastPressedAt;

  @override
  void initState() {
    super.initState();
    _isLoading = widget.isLoading;
  }

  Future<void> _handlePressed() async {
    if (_isLoading) return;
    final now = DateTime.now();
    if (_lastPressedAt == null ||
        now.difference(_lastPressedAt!) > widget.debounceDuration) {
      _lastPressedAt = now;
      setState(() {
        _isLoading = true;
      });
      try {
        await widget.onPressed();
      } catch (e) {
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.tooltip ?? '',
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.buttonColor,
          textStyle: widget.textStyle,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: widget.borderWidth ?? 0,
            ),
          ),
          padding: widget.padding,
        ),
        onPressed: _handlePressed,
        child: _isLoading
            ? widget.loadingIndicator ??
                SpinKitCircle(
                    color: Colors.white) // flutter_spinkit의 로딩 인디케이터 사용
            : widget.child,
      ),
    );
  }
}
