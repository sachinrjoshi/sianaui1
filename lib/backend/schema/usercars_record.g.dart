// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usercars_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsercarsRecord> _$usercarsRecordSerializer =
    new _$UsercarsRecordSerializer();

class _$UsercarsRecordSerializer
    implements StructuredSerializer<UsercarsRecord> {
  @override
  final Iterable<Type> types = const [UsercarsRecord, _$UsercarsRecord];
  @override
  final String wireName = 'UsercarsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsercarsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.carmake;
    if (value != null) {
      result
        ..add('carmake')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carmodel;
    if (value != null) {
      result
        ..add('carmodel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsercarsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsercarsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'carmake':
          result.carmake = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'carmodel':
          result.carmodel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsercarsRecord extends UsercarsRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final String carmake;
  @override
  final String carmodel;
  @override
  final DocumentReference<Object> reference;

  factory _$UsercarsRecord([void Function(UsercarsRecordBuilder) updates]) =>
      (new UsercarsRecordBuilder()..update(updates)).build();

  _$UsercarsRecord._({this.user, this.carmake, this.carmodel, this.reference})
      : super._();

  @override
  UsercarsRecord rebuild(void Function(UsercarsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsercarsRecordBuilder toBuilder() =>
      new UsercarsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsercarsRecord &&
        user == other.user &&
        carmake == other.carmake &&
        carmodel == other.carmodel &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), carmake.hashCode), carmodel.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsercarsRecord')
          ..add('user', user)
          ..add('carmake', carmake)
          ..add('carmodel', carmodel)
          ..add('reference', reference))
        .toString();
  }
}

class UsercarsRecordBuilder
    implements Builder<UsercarsRecord, UsercarsRecordBuilder> {
  _$UsercarsRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _carmake;
  String get carmake => _$this._carmake;
  set carmake(String carmake) => _$this._carmake = carmake;

  String _carmodel;
  String get carmodel => _$this._carmodel;
  set carmodel(String carmodel) => _$this._carmodel = carmodel;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsercarsRecordBuilder() {
    UsercarsRecord._initializeBuilder(this);
  }

  UsercarsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _carmake = $v.carmake;
      _carmodel = $v.carmodel;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsercarsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsercarsRecord;
  }

  @override
  void update(void Function(UsercarsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsercarsRecord build() {
    final _$result = _$v ??
        new _$UsercarsRecord._(
            user: user,
            carmake: carmake,
            carmodel: carmodel,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
