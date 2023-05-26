import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:library_flutter/myLibrary/RestAPI/DTO/Dto.dart';

//TODO DTO를 넘기면 자동으로 Map으로 변환할 수 있는 로직이 필요하다. 현재는 DTO 클래스에서 json으로 바꾸기 때문에 추가적인 DTO가 생길때마다 toJson() 메서드를 만들어야 하는 귀찮음이 생길 수 있다.
Future<String> post_with_Dto(String URL, Dto dto) async {
  var url = Uri.parse(URL);
  print(dto.toJson());

  final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'}, 
      body: jsonEncode(dto.toJson())
  );
  if (response.statusCode == 200) {
    // Request successful
    print('POST request successful');
    print(response.body);
    return response.body;
  } else {
    // Request failed
    print('POST request failed with status: ${response.statusCode}');
    return '${response.statusCode}';
  }
}
