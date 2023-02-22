import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:samapp/model/index.dart';
import 'package:built_collection/built_collection.dart';
import '../utils/converters/iso8601_date_time_serializer.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Example, Answer, OtpRequest, AuthenticationResponse, AuthenticationRequest
])
final Serializers standardSerializers = (
    _$standardSerializers.toBuilder()
      ..add(Iso8601DateTimeSerializer())
        ..addPlugin(StandardJsonPlugin())).build();