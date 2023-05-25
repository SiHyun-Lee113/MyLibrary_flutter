import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/UI/TextField/validate.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FocusNode _emailFocus = new FocusNode();
  FocusNode _passwordFocus = new FocusNode();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Form(
          key: formKey,
          child: Column(
            children: [
              _showEmailInput(),
              _showPasswordInput(),
              _showOkBtn()
            ],)
      );
  }

  Widget _showEmailInput(){
    return Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  focusNode: _emailFocus,
                  decoration: _textFormDecoration('이메일', '이메일을 입력해주세요'),
                  validator: (value) => CheckValidate().validateEmail(_emailFocus, value!),
                )),
          ],
        ));
  }

  Widget _showPasswordInput(){
    return Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  focusNode: _passwordFocus,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: _textFormDecoration('비밀번호', '특수문자, 대소문자, 숫자 포함 8자 이상 15자 이내로 입력하세요.'),
                  validator: (value) => CheckValidate().validatePassword(_passwordFocus, value!),
                )),
          ],
        ));
  }

  InputDecoration _textFormDecoration(hintText, helperText){
    return new InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 0),
      hintText: hintText,
      helperText: helperText,
    );
  }

  Widget _showOkBtn(){
    return Padding(padding: EdgeInsets.only(top: 20),
        child: MaterialButton(
          height: 50,
          child: Text('확인'),
          onPressed: (){
            formKey.currentState?.validate();
          },
        ));
  }
}