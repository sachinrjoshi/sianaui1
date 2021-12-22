import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appconfigdata_record.g.dart';

abstract class AppconfigdataRecord
    implements Built<AppconfigdataRecord, AppconfigdataRecordBuilder> {
  static Serializer<AppconfigdataRecord> get serializer =>
      _$appconfigdataRecordSerializer;

  @nullable
  String get type;

  @nullable
  String get key;

  @nullable
  BuiltList<String> get valuearray;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AppconfigdataRecordBuilder builder) => builder
    ..type = ''
    ..key = ''
    ..valuearray = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appconfigdata');

  static Stream<AppconfigdataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AppconfigdataRecord._();
  factory AppconfigdataRecord(
          [void Function(AppconfigdataRecordBuilder) updates]) =
      _$AppconfigdataRecord;

  static AppconfigdataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAppconfigdataRecordData({
  String type,
  String key,
}) =>
    serializers.toFirestore(
        AppconfigdataRecord.serializer,
        AppconfigdataRecord((a) => a
          ..type = type
          ..key = key
          ..valuearray = null));
