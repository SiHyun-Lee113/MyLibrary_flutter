import 'package:http/http.dart' as http;

Future<String> get_param(String URL, Map<String, dynamic> params) async {
  var url = Uri.parse(URL).replace(queryParameters: params);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return '${response.statusCode}';
  }
}

Future<String> get(String URL) async {
  var url = Uri.parse(URL);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return '${response.statusCode}';
  }
}

Future<String> get_pathVariable(String URL, List<String> variables) async {
  for (String s in variables) {
    URL += '/' + s;
  }
  var response = await http.get(Uri.parse(URL));
  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return '${response.statusCode}';
  }
}