import 'package:flutter/material.dart';

typedef void ValueChangedCallback(String value);

class TextFieldValidation extends StatefulWidget {
  final ValueChangedCallback onChanged;
  final String regex;
  final String labelText;
  final String helperTextCorrect;
  final String helperTextWrong;
  final bool obscureText;

  TextFieldValidation({
    required this.onChanged,
    required this.regex,
    required this.labelText,
    required this.helperTextCorrect,
    required this.helperTextWrong,
    required this.obscureText
  });

  @override
  State<StatefulWidget> createState() => _TextFieldValidationState();
}

class _TextFieldValidationState extends State<TextFieldValidation> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textController.addListener(_printLatesValue);
  }

  void _printLatesValue() {
    widget.onChanged(textController.text);
    setState(() {

    });
  }

  InputDecoration validateUserId(String userId) {
    RegExp regex = RegExp(widget.regex);
    if (regex.hasMatch(userId))
      return InputDecoration(
          labelText: widget.labelText,
          // helperText: '조합이 아주 훌륭해요~',
          helperText: widget.helperTextCorrect,
        helperStyle: TextStyle(color: Colors.green)
      );
    else
      return InputDecoration(
        labelText: widget.labelText,
        helperText: widget.helperTextWrong,
        helperStyle: TextStyle(color: Colors.red),
      );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      controller: textController,
      decoration: validateUserId(textController.text),
    );
  }
}
