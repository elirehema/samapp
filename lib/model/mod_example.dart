import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mod_example.g.dart';
abstract class Example implements Built<Example, ExampleBuilder> {
  String? get questionId;
  String? get answer;
  String? get responder;

  Example._();
  factory Example([updates(ExampleBuilder b)]) = _$Example;
  static Serializer<Example> get serializer => _$exampleSerializer;
}