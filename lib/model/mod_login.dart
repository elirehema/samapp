import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mod_login.g.dart';

 abstract class AuthenticationRequest  implements Built<AuthenticationRequest, AuthenticationRequestBuilder>  {
  String? get username;
  String? get  password;
  AuthenticationRequest._();
  factory AuthenticationRequest([updates(AuthenticationRequestBuilder b)]) = _$AuthenticationRequest;
  factory AuthenticationRequest.from(_username,  _password) => _$AuthenticationRequest._(username:_username, password:_password);
  static Serializer<AuthenticationRequest> get serializer => _$authenticationRequestSerializer;



}
