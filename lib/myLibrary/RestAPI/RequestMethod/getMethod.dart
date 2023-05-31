import 'package:http/http.dart' as http;
import 'package:library_flutter/myLibrary/RestAPI/RequestMethod/responseProcessing.dart' as RP;

//Request Parameter가 존재할 때
Future<String> get_param(String URL, Map<String, dynamic> params) async {
  var url = Uri.parse(URL).replace(queryParameters: params);
  http.Response response = RP.responseProcessing(await http.get(url)) as http.Response;
  return response.body;
}

//아무런 파라미터가 없을 때
Future<String> get(String URL) async {
  var url = Uri.parse(URL);
  http.Response response = RP.responseProcessing(await http.get(url)) as http.Response;
  return response.body;
}

//Path Variable이 존재할 때
Future<String> get_pathVariable(String URL, List<String> variables) async {
  for (String s in variables) {
    URL += '/' + s;
  }
  http.Response response = RP.responseProcessing(await http.get(Uri.parse(URL))) as http.Response;
  return response.body;
}