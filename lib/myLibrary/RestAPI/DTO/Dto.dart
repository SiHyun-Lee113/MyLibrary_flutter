import 'package:flutter/cupertino.dart';

abstract class Dto {

  @protected
  Map<String, dynamic> toJson();
}