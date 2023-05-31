import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Object responseProcessing(http.Response response) {
  if (response.statusCode == 200) {
    return response;
  }
  if (response.statusCode == 201) {
    return response;
  }
  if (response.statusCode == 202) {
    return response;
  }
  if (response.statusCode == 400) {
    //TODO
  }
  if (response.statusCode == 401) {
    //TODO
  }
  if (response.statusCode == 403) {
    //TODO
  }
  if (response.statusCode == 404) {
    //TODO
  }
  if (response.statusCode == 500) {
    //TODO
  }
  if (response.statusCode == 501) {}
  if (response.statusCode == 502) {}
  if (response.statusCode == 503) {}

  return response;
}
