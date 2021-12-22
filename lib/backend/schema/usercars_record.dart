import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usercars_record.g.dart';

abstract class UsercarsRecord
    implements Built<UsercarsRecord, UsercarsRecordBuilder> {
  static Serializer<UsercarsRecord> get serializer =>
      _$usercarsRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  String get carmake;

  @nullable
  String get carmodel;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsercarsRecordBuilder builder) => builder
    ..carmake = ''
    ..carmodel = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usercars');

  static Stream<UsercarsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsercarsRecord._();
  factory UsercarsRecord([void Function(UsercarsRecordBuilder) updates]) =
      _$UsercarsRecord;

  static UsercarsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsercarsRecordData({
  DocumentReference user,
  String carmake,
  String carmodel,
}) =>
    serializers.toFirestore(
        UsercarsRecord.serializer,
        UsercarsRecord((u) => u
          ..user = user
          ..carmake = carmake
          ..carmodel = carmodel));
