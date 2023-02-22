// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_otp_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OtpRequest> _$otpRequestSerializer = new _$OtpRequestSerializer();

class _$OtpRequestSerializer implements StructuredSerializer<OtpRequest> {
  @override
  final Iterable<Type> types = const [OtpRequest, _$OtpRequest];
  @override
  final String wireName = 'OtpRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, OtpRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.otp;
    if (value != null) {
      result
        ..add('otp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OtpRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtpRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'otp':
          result.otp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$OtpRequest extends OtpRequest {
  @override
  final String? phone;
  @override
  final String? otp;

  factory _$OtpRequest([void Function(OtpRequestBuilder)? updates]) =>
      (new OtpRequestBuilder()..update(updates))._build();

  _$OtpRequest._({this.phone, this.otp}) : super._();

  @override
  OtpRequest rebuild(void Function(OtpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtpRequestBuilder toBuilder() => new OtpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtpRequest && phone == other.phone && otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OtpRequest')
          ..add('phone', phone)
          ..add('otp', otp))
        .toString();
  }
}

class OtpRequestBuilder implements Builder<OtpRequest, OtpRequestBuilder> {
  _$OtpRequest? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  OtpRequestBuilder();

  OtpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OtpRequest;
  }

  @override
  void update(void Function(OtpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OtpRequest build() => _build();

  _$OtpRequest _build() {
    final _$result = _$v ?? new _$OtpRequest._(phone: phone, otp: otp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
