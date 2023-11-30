import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "coments" field.
  List<DocumentReference>? _coments;
  List<DocumentReference> get coments => _coments ?? const [];
  bool hasComents() => _coments != null;

  // "me_gusta" field.
  int? _meGusta;
  int get meGusta => _meGusta ?? 0;
  bool hasMeGusta() => _meGusta != null;

  // "like_usu" field.
  List<DocumentReference>? _likeUsu;
  List<DocumentReference> get likeUsu => _likeUsu ?? const [];
  bool hasLikeUsu() => _likeUsu != null;

  // "post_usu" field.
  DocumentReference? _postUsu;
  DocumentReference? get postUsu => _postUsu;
  bool hasPostUsu() => _postUsu != null;

  void _initializeFields() {
    _foto = snapshotData['foto'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _coments = getDataList(snapshotData['coments']);
    _meGusta = castToType<int>(snapshotData['me_gusta']);
    _likeUsu = getDataList(snapshotData['like_usu']);
    _postUsu = snapshotData['post_usu'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  String? foto,
  String? descripcion,
  String? titulo,
  int? meGusta,
  DocumentReference? postUsu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foto': foto,
      'descripcion': descripcion,
      'titulo': titulo,
      'me_gusta': meGusta,
      'post_usu': postUsu,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.foto == e2?.foto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.titulo == e2?.titulo &&
        listEquality.equals(e1?.coments, e2?.coments) &&
        e1?.meGusta == e2?.meGusta &&
        listEquality.equals(e1?.likeUsu, e2?.likeUsu) &&
        e1?.postUsu == e2?.postUsu;
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([
        e?.foto,
        e?.descripcion,
        e?.titulo,
        e?.coments,
        e?.meGusta,
        e?.likeUsu,
        e?.postUsu
      ]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
