// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_authentication_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthenticationResponse> _$authenticationResponseSerializer =
    new _$AuthenticationResponseSerializer();

class _$AuthenticationResponseSerializer
    implements StructuredSerializer<AuthenticationResponse> {
  @override
  final Iterable<Type> types = const [
    AuthenticationResponse,
    _$AuthenticationResponse
  ];
  @override
  final String wireName = 'AuthenticationResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AuthenticationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'tokenType',
      serializers.serialize(object.tokenType,
          specifiedType: const FullType(String)),
      'nextStep',
      serializers.serialize(object.nextStep,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.roles;
    if (value != null) {
      result
        ..add('roles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  AuthenticationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthenticationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tokenType':
          result.tokenType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nextStep':
          result.nextStep = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'roles':
          result.roles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthenticationResponse extends AuthenticationResponse {
  @override
  final String token;
  @override
  final String accessToken;
  @override
  final String tokenType;
  @override
  final String nextStep;
  @override
  final String email;
  @override
  final String username;
  @override
  final String lastname;
  @override
  final String firstname;
  @override
  final String id;
  @override
  final BuiltList<String>? roles;

  factory _$AuthenticationResponse(
          [void Function(AuthenticationResponseBuilder)? updates]) =>
      (new AuthenticationResponseBuilder()..update(updates))._build();

  _$AuthenticationResponse._(
      {required this.token,
      required this.accessToken,
      required this.tokenType,
      required this.nextStep,
      required this.email,
      required this.username,
      required this.lastname,
      required this.firstname,
      required this.id,
      this.roles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, r'AuthenticationResponse', 'token');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'AuthenticationResponse', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        tokenType, r'AuthenticationResponse', 'tokenType');
    BuiltValueNullFieldError.checkNotNull(
        nextStep, r'AuthenticationResponse', 'nextStep');
    BuiltValueNullFieldError.checkNotNull(
        email, r'AuthenticationResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(
        username, r'AuthenticationResponse', 'username');
    BuiltValueNullFieldError.checkNotNull(
        lastname, r'AuthenticationResponse', 'lastname');
    BuiltValueNullFieldError.checkNotNull(
        firstname, r'AuthenticationResponse', 'firstname');
    BuiltValueNullFieldError.checkNotNull(id, r'AuthenticationResponse', 'id');
  }

  @override
  AuthenticationResponse rebuild(
          void Function(AuthenticationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationResponseBuilder toBuilder() =>
      new AuthenticationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationResponse &&
        token == other.token &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        nextStep == other.nextStep &&
        email == other.email &&
        username == other.username &&
        lastname == other.lastname &&
        firstname == other.firstname &&
        id == other.id &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jc(_$hash, nextStep.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticationResponse')
          ..add('token', token)
          ..add('accessToken', accessToken)
          ..add('tokenType', tokenType)
          ..add('nextStep', nextStep)
          ..add('email', email)
          ..add('username', username)
          ..add('lastname', lastname)
          ..add('firstname', firstname)
          ..add('id', id)
          ..add('roles', roles))
        .toString();
  }
}

class AuthenticationResponseBuilder
    implements Builder<AuthenticationResponse, AuthenticationResponseBuilder> {
  _$AuthenticationResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  String? _nextStep;
  String? get nextStep => _$this._nextStep;
  set nextStep(String? nextStep) => _$this._nextStep = nextStep;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= new ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  AuthenticationResponseBuilder();

  AuthenticationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _accessToken = $v.accessToken;
      _tokenType = $v.tokenType;
      _nextStep = $v.nextStep;
      _email = $v.email;
      _username = $v.username;
      _lastname = $v.lastname;
      _firstname = $v.firstname;
      _id = $v.id;
      _roles = $v.roles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticationResponse;
  }

  @override
  void update(void Function(AuthenticationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticationResponse build() => _build();

  _$AuthenticationResponse _build() {
    _$AuthenticationResponse _$result;
    try {
      _$result = _$v ??
          new _$AuthenticationResponse._(
              token: BuiltValueNullFieldError.checkNotNull(
                  token, r'AuthenticationResponse', 'token'),
              accessToken: BuiltValueNullFieldError.checkNotNull(
                  accessToken, r'AuthenticationResponse', 'accessToken'),
              tokenType: BuiltValueNullFieldError.checkNotNull(
                  tokenType, r'AuthenticationResponse', 'tokenType'),
              nextStep: BuiltValueNullFieldError.checkNotNull(
                  nextStep, r'AuthenticationResponse', 'nextStep'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'AuthenticationResponse', 'email'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'AuthenticationResponse', 'username'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'AuthenticationResponse', 'lastname'),
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'AuthenticationResponse', 'firstname'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'AuthenticationResponse', 'id'),
              roles: _roles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthenticationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
