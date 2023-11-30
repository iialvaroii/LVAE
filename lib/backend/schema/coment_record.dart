import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ComentRecord extends FirestoreRecord {
  ComentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "CreateBy" field.
  DocumentReference? _createBy;
  DocumentReference? get createBy => _createBy;
  bool hasCreateBy() => _createBy != null;

  // "tiempBy" field.
  DateTime? _tiempBy;
  DateTime? get tiempBy => _tiempBy;
  bool hasTiempBy() => _tiempBy != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  void _initializeFields() {
    _mensaje = snapshotData['mensaje'] as String?;
    _createBy = snapshotData['CreateBy'] as DocumentReference?;
    _tiempBy = snapshotData['tiempBy'] as DateTime?;
    _producto = snapshotData['producto'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coment');

  static Stream<ComentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComentRecord.fromSnapshot(s));

  static Future<ComentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComentRecord.fromSnapshot(s));

  static ComentRecord fromSnapshot(DocumentSnapshot snapshot) => ComentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComentRecordData({
  String? mensaje,
  DocumentReference? createBy,
  DateTime? tiempBy,
  DocumentReference? producto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mensaje': mensaje,
      'CreateBy': createBy,
      'tiempBy': tiempBy,
      'producto': producto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComentRecordDocumentEquality implements Equality<ComentRecord> {
  const ComentRecordDocumentEquality();

  @override
  bool equals(ComentRecord? e1, ComentRecord? e2) {
    return e1?.mensaje == e2?.mensaje &&
        e1?.createBy == e2?.createBy &&
        e1?.tiempBy == e2?.tiempBy &&
        e1?.producto == e2?.producto;
  }

  @override
  int hash(ComentRecord? e) => const ListEquality()
      .hash([e?.mensaje, e?.createBy, e?.tiempBy, e?.producto]);

  @override
  bool isValidKey(Object? o) => o is ComentRecord;
}
