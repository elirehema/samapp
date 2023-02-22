import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'mod_response.g.dart';
abstract class AuthenticationResponse implements Built<AuthenticationResponse, AuthenticationResponseBuilder>{
  String get accessToken;
  String get createdOn;
  String get updatedOn;
  String get displayName;
  String get email;
  String get username;
  String get lastName;
  String get firstName;
  String get id;
  BuiltList<String> get roles;
  BuiltList<String> get permissions;
  String get realm;
  String get sessioId;
  String get mobileNumber;

  AuthenticationResponse._();
  factory AuthenticationResponse([updates(AuthenticationResponseBuilder b)]) = _$AuthenticationResponse;
  static Serializer<AuthenticationResponse> get serializer => _$authenticationResponseSerializer;


}