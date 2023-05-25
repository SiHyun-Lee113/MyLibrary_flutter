import 'Dto.dart';

class TestDto extends Dto{
  final String name;
  final String age;


  TestDto({required this.name, required this.age});


  @override
  String toString() {
    return 'TestDto{name: $name, age: $age}';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'name' : name,
      'age' : age,
    };
  }
}
