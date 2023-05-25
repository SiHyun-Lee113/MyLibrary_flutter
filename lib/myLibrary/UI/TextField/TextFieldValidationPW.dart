import 'package:flutter/material.dart';

typedef void ValueChangedCallback(String value);

class TextFieldValidationPW extends StatefulWidget {
  final ValueChangedCallback onChanged;

  TextFieldValidationPW({required this.onChanged});

  @override
  State<StatefulWidget> createState() => _TextFieldValidationPWState();
}

class _TextFieldValidationPWState extends State<TextFieldValidationPW> {
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
    RegExp regex = RegExp(r'^(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*])[a-z\d!@#$%^&*]{9,}$');
    if (regex.hasMatch(userId))
      return InputDecoration(
          labelText: '비밀번호',
          helperText: '조합이 아주 훌륭해요~',
          helperStyle: TextStyle(color: Colors.green)
      );
    else
      return InputDecoration(
        labelText: '비밀번호',
        helperText: '영문(소문자), 숫자, 특수문자(!@#\$%^&*)를 조합해주세요~',
        helperStyle: TextStyle(color: Colors.red),
      );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      controller: textController,
      decoration: validateUserId(textController.text),
    );
  }
}
