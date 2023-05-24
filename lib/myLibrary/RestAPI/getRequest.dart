import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:library_flutter/myLibrary/RestAPI/DTO/MemberDTO.dart';
import 'package:library_flutter/myLibrary/RestAPI/RequestMethod/getMethod.dart'
    as getMethod;

class GetRequestTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GetRequestTestState();
}

class GetRequestTestState extends State<StatefulWidget> {
  final String BASE_URL = 'http://10.0.2.2:8080/api/v1/get-api';
  String apiResponse = '';
  String get_param_response = '';
  String get_pathVariable_response = '';
  String get_dto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest API test - get'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Get 요청 결과 : $apiResponse"),
            ElevatedButton(
                onPressed: () {
                  var URL = BASE_URL + '/name';
                  getMethod.get(URL).then((response) {
                    setState(() {
                      apiResponse = response;
                    });
                  }).catchError((error) {
                    setState(() {
                      apiResponse = 'Error : $error';
                    });
                  });
                },
                child: Text('Request get')),
            Text("Get 요청(RequestParam) 결과 : $get_param_response"),
            ElevatedButton(
                onPressed: () {
                  Map<String, String> params = {
                    'name': '이시현',
                    'email': 'test@gmail.com',
                    'organization': 'PTN',
                  };

                  var URL = BASE_URL + '/request1';
                  getMethod.get_param(URL, params).then((response) {
                    setState(() {
                      get_param_response = response;
                    });
                  }).catchError((error) {
                    setState(() {
                      apiResponse = 'Error : $error';
                    });
                  });
                },
                child: Text('Request Param get')),
            Text("Get 요청(PathVariable) 결과 : $get_pathVariable_response"),
            ElevatedButton(
                onPressed: () {
                  List<String> pathVar = ['param1', 'param2'];

                  var URL = BASE_URL + '/variable1';
                  getMethod.get_pathVariable(URL, pathVar).then((response) {
                    setState(() {
                      get_pathVariable_response = response;
                    });
                  }).catchError((error) {
                    setState(() {
                      get_pathVariable_response = 'Error : $error';
                    });
                  });
                },
                child: Text('Path Variable get')),
            Text("DTO를 받아보자 : $get_dto"),
            ElevatedButton(
                onPressed: () {
                  Map<String, String> params = {'id': 'id', 'pw': 'password'};
                  var URL = BASE_URL + '/getDto';
                  getMethod.get_param(URL, params).then((response) {
                    var memberDto = jsonDecode(response);
                    var userDTO = UserDTO(
                        name: memberDto['name'],
                        email: memberDto['email'],
                        organization: memberDto['organization']);
                    setState(() {
                      get_dto = userDTO.toString();
                    });
                  }).catchError((error) {
                    setState(() {
                      get_dto = 'Error : $error';
                    });
                  });
                },
                child: Text('get Dto'))
          ],
        ),
      ),
    );
  }
}
