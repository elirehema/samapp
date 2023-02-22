import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mod_answer.g.dart';
abstract class Answer implements Built<Answer, AnswerBuilder> {
  String? get questionId;
  String? get answer;
  String? get responder;

  Answer._();
  factory Answer([updates(AnswerBuilder b)]) = _$Answer;
  factory Answer.from(Answer ea) => _$Answer._(questionId: ea.questionId, answer: ea.answer, responder: ea.questionId);
  static Serializer<Answer> get serializer => _$answerSerializer;
}