// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_response.dart';

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
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'createdOn',
      serializers.serialize(object.createdOn,
          specifiedType: const FullType(String)),
      'updatedOn',
      serializers.serialize(object.updatedOn,
          specifiedType: const FullType(String)),
      'displayName',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'roles',
      serializers.serialize(object.roles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'permissions',
      serializers.serialize(object.permissions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'realm',
      serializers.serialize(object.realm,
          specifiedType: const FullType(String)),
      'sessioId',
      serializers.serialize(object.sessioId,
          specifiedType: const FullType(String)),
      'mobileNumber',
      serializers.serialize(object.mobileNumber,
          specifiedType: const FullType(String)),
    ];

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
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedOn':
          result.updatedOn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
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
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
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
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'realm':
          result.realm = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sessioId':
          result.sessioId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthenticationResponse extends AuthenticationResponse {
  @override
  final String accessToken;
  @override
  final String createdOn;
  @override
  final String updatedOn;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String username;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String id;
  @override
  final BuiltList<String> roles;
  @override
  final BuiltList<String> permissions;
  @override
  final String realm;
  @override
  final String sessioId;
  @override
  final String mobileNumber;

  factory _$AuthenticationResponse(
          [void Function(AuthenticationResponseBuilder)? updates]) =>
      (new AuthenticationResponseBuilder()..update(updates))._build();

  _$AuthenticationResponse._(
      {required this.accessToken,
      required this.createdOn,
      required this.updatedOn,
      required this.displayName,
      required this.email,
      required this.username,
      required this.lastName,
      required this.firstName,
      required this.id,
      required this.roles,
      required this.permissions,
      required this.realm,
      required this.sessioId,
      required this.mobileNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'AuthenticationResponse', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        createdOn, r'AuthenticationResponse', 'createdOn');
    BuiltValueNullFieldError.checkNotNull(
        updatedOn, r'AuthenticationResponse', 'updatedOn');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'AuthenticationResponse', 'displayName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'AuthenticationResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(
        username, r'AuthenticationResponse', 'username');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'AuthenticationResponse', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'AuthenticationResponse', 'firstName');
    BuiltValueNullFieldError.checkNotNull(id, r'AuthenticationResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        roles, r'AuthenticationResponse', 'roles');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'AuthenticationResponse', 'permissions');
    BuiltValueNullFieldError.checkNotNull(
        realm, r'AuthenticationResponse', 'realm');
    BuiltValueNullFieldError.checkNotNull(
        sessioId, r'AuthenticationResponse', 'sessioId');
    BuiltValueNullFieldError.checkNotNull(
        mobileNumber, r'AuthenticationResponse', 'mobileNumber');
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
        accessToken == other.accessToken &&
        createdOn == other.createdOn &&
        updatedOn == other.updatedOn &&
        displayName == other.displayName &&
        email == other.email &&
        username == other.username &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        id == other.id &&
        roles == other.roles &&
        permissions == other.permissions &&
        realm == other.realm &&
        sessioId == other.sessioId &&
        mobileNumber == other.mobileNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, updatedOn.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, realm.hashCode);
    _$hash = $jc(_$hash, sessioId.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticationResponse')
          ..add('accessToken', accessToken)
          ..add('createdOn', createdOn)
          ..add('updatedOn', updatedOn)
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('username', username)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('id', id)
          ..add('roles', roles)
          ..add('permissions', permissions)
          ..add('realm', realm)
          ..add('sessioId', sessioId)
          ..add('mobileNumber', mobileNumber))
        .toString();
  }
}

class AuthenticationResponseBuilder
    implements Builder<AuthenticationResponse, AuthenticationResponseBuilder> {
  _$AuthenticationResponse? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _createdOn;
  String? get createdOn => _$this._createdOn;
  set createdOn(String? createdOn) => _$this._createdOn = createdOn;

  String? _updatedOn;
  String? get updatedOn => _$this._updatedOn;
  set updatedOn(String? updatedOn) => _$this._updatedOn = updatedOn;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= new ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= new ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  String? _realm;
  String? get realm => _$this._realm;
  set realm(String? realm) => _$this._realm = realm;

  String? _sessioId;
  String? get sessioId => _$this._sessioId;
  set sessioId(String? sessioId) => _$this._sessioId = sessioId;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  AuthenticationResponseBuilder();

  AuthenticationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _createdOn = $v.createdOn;
      _updatedOn = $v.updatedOn;
      _displayName = $v.displayName;
      _email = $v.email;
      _username = $v.username;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _id = $v.id;
      _roles = $v.roles.toBuilder();
      _permissions = $v.permissions.toBuilder();
      _realm = $v.realm;
      _sessioId = $v.sessioId;
      _mobileNumber = $v.mobileNumber;
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
              accessToken: BuiltValueNullFieldError.checkNotNull(
                  accessToken, r'AuthenticationResponse', 'accessToken'),
              createdOn: BuiltValueNullFieldError.checkNotNull(
                  createdOn, r'AuthenticationResponse', 'createdOn'),
              updatedOn: BuiltValueNullFieldError.checkNotNull(
                  updatedOn, r'AuthenticationResponse', 'updatedOn'),
              displayName: BuiltValueNullFieldError.checkNotNull(
                  displayName, r'AuthenticationResponse', 'displayName'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'AuthenticationResponse', 'email'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'AuthenticationResponse', 'username'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, r'AuthenticationResponse', 'lastName'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'AuthenticationResponse', 'firstName'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'AuthenticationResponse', 'id'),
              roles: roles.build(),
              permissions: permissions.build(),
              realm: BuiltValueNullFieldError.checkNotNull(realm, r'AuthenticationResponse', 'realm'),
              sessioId: BuiltValueNullFieldError.checkNotNull(sessioId, r'AuthenticationResponse', 'sessioId'),
              mobileNumber: BuiltValueNullFieldError.checkNotNull(mobileNumber, r'AuthenticationResponse', 'mobileNumber'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
        _$failedField = 'permissions';
        permissions.build();
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
