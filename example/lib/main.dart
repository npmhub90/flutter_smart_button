import 'package:flutter/material.dart';
import 'package:flutter_smart_button/smart_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SmartButton Example'),
        ),
        body: Center(
          child: SmartButtonExample(),
        ),
      ),
    );
  }
}

class SmartButtonExample extends StatefulWidget {
  @override
  _SmartButtonExampleState createState() => _SmartButtonExampleState();
}

class _SmartButtonExampleState extends State<SmartButtonExample> {
  bool _isLoading = false;

  Future<void> _simulateAsyncOperation() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Completed'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SmartButton(
      child: Text('click please'),
      onPressed: _simulateAsyncOperation,
      isLoading: _isLoading,
      loadingIndicator: CircularProgressIndicator(
        color: Colors.white,
      ),
      buttonColor: Colors.blue,
      textStyle: TextStyle(fontSize: 18, color: Colors.white),
      borderWidth: 2.0,
      borderColor: Colors.blueAccent,
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      tooltip: '클릭하여 작업 시작',
    );
  }
}
