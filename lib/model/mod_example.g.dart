// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_example.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Example> _$exampleSerializer = new _$ExampleSerializer();

class _$ExampleSerializer implements StructuredSerializer<Example> {
  @override
  final Iterable<Type> types = const [Example, _$Example];
  @override
  final String wireName = 'Example';

  @override
  Iterable<Object?> serialize(Serializers serializers, Example object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.questionId;
    if (value != null) {
      result
        ..add('questionId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.responder;
    if (value != null) {
      result
        ..add('responder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Example deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExampleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'questionId':
          result.questionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'responder':
          result.responder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Example extends Example {
  @override
  final String? questionId;
  @override
  final String? answer;
  @override
  final String? responder;

  factory _$Example([void Function(ExampleBuilder)? updates]) =>
      (new ExampleBuilder()..update(updates))._build();

  _$Example._({this.questionId, this.answer, this.responder}) : super._();

  @override
  Example rebuild(void Function(ExampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExampleBuilder toBuilder() => new ExampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Example &&
        questionId == other.questionId &&
        answer == other.answer &&
        responder == other.responder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jc(_$hash, responder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Example')
          ..add('questionId', questionId)
          ..add('answer', answer)
          ..add('responder', responder))
        .toString();
  }
}

class ExampleBuilder implements Builder<Example, ExampleBuilder> {
  _$Example? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  String? _responder;
  String? get responder => _$this._responder;
  set responder(String? responder) => _$this._responder = responder;

  ExampleBuilder();

  ExampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _answer = $v.answer;
      _responder = $v.responder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Example other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Example;
  }

  @override
  void update(void Function(ExampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Example build() => _build();

  _$Example _build() {
    final _$result = _$v ??
        new _$Example._(
            questionId: questionId, answer: answer, responder: responder);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
