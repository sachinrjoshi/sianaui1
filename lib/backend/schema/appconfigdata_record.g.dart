// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appconfigdata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppconfigdataRecord> _$appconfigdataRecordSerializer =
    new _$AppconfigdataRecordSerializer();

class _$AppconfigdataRecordSerializer
    implements StructuredSerializer<AppconfigdataRecord> {
  @override
  final Iterable<Type> types = const [
    AppconfigdataRecord,
    _$AppconfigdataRecord
  ];
  @override
  final String wireName = 'AppconfigdataRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AppconfigdataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.key;
    if (value != null) {
      result
        ..add('key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.valuearray;
    if (value != null) {
      result
        ..add('valuearray')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  AppconfigdataRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppconfigdataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'valuearray':
          result.valuearray.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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

class _$AppconfigdataRecord extends AppconfigdataRecord {
  @override
  final String type;
  @override
  final String key;
  @override
  final BuiltList<String> valuearray;
  @override
  final DocumentReference<Object> reference;

  factory _$AppconfigdataRecord(
          [void Function(AppconfigdataRecordBuilder) updates]) =>
      (new AppconfigdataRecordBuilder()..update(updates)).build();

  _$AppconfigdataRecord._(
      {this.type, this.key, this.valuearray, this.reference})
      : super._();

  @override
  AppconfigdataRecord rebuild(
          void Function(AppconfigdataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppconfigdataRecordBuilder toBuilder() =>
      new AppconfigdataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppconfigdataRecord &&
        type == other.type &&
        key == other.key &&
        valuearray == other.valuearray &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), key.hashCode), valuearray.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppconfigdataRecord')
          ..add('type', type)
          ..add('key', key)
          ..add('valuearray', valuearray)
          ..add('reference', reference))
        .toString();
  }
}

class AppconfigdataRecordBuilder
    implements Builder<AppconfigdataRecord, AppconfigdataRecordBuilder> {
  _$AppconfigdataRecord _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  ListBuilder<String> _valuearray;
  ListBuilder<String> get valuearray =>
      _$this._valuearray ??= new ListBuilder<String>();
  set valuearray(ListBuilder<String> valuearray) =>
      _$this._valuearray = valuearray;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AppconfigdataRecordBuilder() {
    AppconfigdataRecord._initializeBuilder(this);
  }

  AppconfigdataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _key = $v.key;
      _valuearray = $v.valuearray?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppconfigdataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppconfigdataRecord;
  }

  @override
  void update(void Function(AppconfigdataRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppconfigdataRecord build() {
    _$AppconfigdataRecord _$result;
    try {
      _$result = _$v ??
          new _$AppconfigdataRecord._(
              type: type,
              key: key,
              valuearray: _valuearray?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'valuearray';
        _valuearray?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppconfigdataRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
