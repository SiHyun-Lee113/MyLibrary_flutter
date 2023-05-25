import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:library_flutter/myLibrary/RestAPI/DTO/MemberDTO.dart';
import 'package:library_flutter/myLibrary/RestAPI/DTO/TestDto.dart';
import 'package:library_flutter/myLibrary/RestAPI/RequestMethod/postMethod.dart'
    as postMethod;

class PostRequestTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GetRequestTestState();
}

class GetRequestTestState extends State<StatefulWidget> {
  final String BASE_URL = 'http://10.0.2.2:8080/api/v1/post-api';
  String apiResponse = '';
  String post_with_dto = '';
  String method_test = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest API test - post'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text('Post with Dto result : $post_with_dto'),
          ElevatedButton(
              onPressed: () {
                var URL = BASE_URL + '/memberCreate';
                UserDTO userDTO = UserDTO(
                    name: "sihyun",
                    email: "test@gmail.com",
                    organization: "PTN");
                postMethod.post_with_Dto(URL, userDTO).then((response) {
                  setState(() {
                    post_with_dto = response;
                  });
                }).catchError((error) {
                  setState(() {
                    print('Error : $error');
                    post_with_dto = 'Error : $error';
                  });
                });
              },
              child: Text('Request post(DTO)')),
          Text('Post with Dto result : $method_test'),
          ElevatedButton(
              onPressed: () {
                var URL = BASE_URL + '/testPost';
                var testDto = TestDto(
                  name: 'testEntity',
                  age: '25'
                );
                postMethod.post_with_Dto(URL, testDto).then((response) {
                  setState(() {
                    method_test = response;
                  });
                }).catchError((error) {
                  setState(() {
                    print('Error : $error');
                    method_test = 'Error : $error';
                  });
                });
              },
              child: Text('Request post(DTO)'))
        ]),
      ),
    );
  }
}
