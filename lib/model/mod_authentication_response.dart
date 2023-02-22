import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'mod_authentication_response.g.dart';
abstract class AuthenticationResponse implements Built<AuthenticationResponse, AuthenticationResponseBuilder>{
  String get token;
  String get accessToken;
  String get tokenType;
  String get nextStep;
  String get email;
  String get username;
  String get lastname;
  String get firstname;
  String get id;
  BuiltList<String>? get roles;
  AuthenticationResponse._();
  factory AuthenticationResponse([updates(AuthenticationResponseBuilder b)]) = _$AuthenticationResponse;
  static Serializer<AuthenticationResponse> get serializer => _$authenticationResponseSerializer;


}