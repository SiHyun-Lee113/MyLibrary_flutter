import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/TextField//TextFieldValidation.dart';
import 'package:library_flutter/myLibrary/TextField/TextformField.dart';

import 'TextFieldValidationPW.dart';

class TextCollection extends StatelessWidget {
  void handleTextFieldValueChanged(String value) {
    print("Updated value: $value");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Collection',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Text Collection'),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text('Text Filed'),
                  TextField(),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Input Text', helperText: 'text만 입력 가능'),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Input Number', helperText: 'number만 입력 가능'),
                  ),
                  /** TextField에 들어온 한글자 마다 반응하는 TextField*/
                  TextFieldValidation(
                    onChanged: handleTextFieldValueChanged,
                    regex: r'^(?=.*[a-z])(?=.*\d)[a-z\d]{8,}$',
                    labelText: '아이디',
                    helperTextCorrect: '조합이 아주 좋아요~',
                    helperTextWrong: '영문(소문자)와 숫자를 조합해주세요~',
                    obscureText: false,
                  ),
                  // TextFieldValidationPW(onChanged: handleTextFieldValueChanged),
                  TextFieldValidation(
                    onChanged: handleTextFieldValueChanged,
                    regex:
                        r'^(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*])[a-z\d!@#$%^&*]{9,}$',
                    labelText: '비밀번호',
                    helperTextCorrect: '조합이 아주 훌륭해요~',
                    helperTextWrong: '영문(소문자), 숫자, 특수문자(!@#\$%^&*)를 조합해주세요~',
                    obscureText: true,
                  ),
                  SignUp()
                ],
              ),
            ),
          )),
    );
  }
}
