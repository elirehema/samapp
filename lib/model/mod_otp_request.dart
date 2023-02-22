import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'mod_otp_request.g.dart';

 abstract class OtpRequest  implements Built<OtpRequest, OtpRequestBuilder>  {
  String? get phone;
  String? get otp;
  OtpRequest._();
  factory OtpRequest([updates(OtpRequestBuilder b)]) = _$OtpRequest;
  factory OtpRequest.request(_phone) => _$OtpRequest._(phone:_phone);
  factory OtpRequest.verify(_phone, _otp) => _$OtpRequest._(phone:_phone, otp:_otp);
  static Serializer<OtpRequest> get serializer => _$otpRequestSerializer;



}
