import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mod_authentication_request.g.dart';

 abstract class AuthenticationRequest  implements Built<AuthenticationRequest, AuthenticationRequestBuilder>  {
  String? get email;
  String? get  password;
  AuthenticationRequest._();
  factory AuthenticationRequest([updates(AuthenticationRequestBuilder b)]) = _$AuthenticationRequest;
  factory AuthenticationRequest.from(_email,  _password) => _$AuthenticationRequest._(email:_email, password:_password);
  static Serializer<AuthenticationRequest> get serializer => _$authenticationRequestSerializer;



}
