import 'Dto.dart';

class UserDTO extends Dto{
  final String name;
  final String email;
  final String organization;

  UserDTO({required this.name, required this.email, required this.organization});

  @override
  String toString() {
    return 'UserDTO{\nname: $name\n email: $email\n organization: $organization\n}';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'name' : name,
      'email' : email,
      'organization' : organization
    };
  }
}
