// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagenStruct extends FFFirebaseStruct {
  ImagenStruct({
    String? imagen,
    DocumentReference? imagen2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _imagen = imagen,
        _imagen2 = imagen2,
        super(firestoreUtilData);

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;
  bool hasImagen() => _imagen != null;

  // "imagen_2" field.
  DocumentReference? _imagen2;
  DocumentReference? get imagen2 => _imagen2;
  set imagen2(DocumentReference? val) => _imagen2 = val;
  bool hasImagen2() => _imagen2 != null;

  static ImagenStruct fromMap(Map<String, dynamic> data) => ImagenStruct(
        imagen: data['imagen'] as String?,
        imagen2: data['imagen_2'] as DocumentReference?,
      );

  static ImagenStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ImagenStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'imagen': _imagen,
        'imagen_2': _imagen2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
        'imagen_2': serializeParam(
          _imagen2,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ImagenStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImagenStruct(
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
        imagen2: deserializeParam(
          data['imagen_2'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['post'],
        ),
      );

  @override
  String toString() => 'ImagenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImagenStruct &&
        imagen == other.imagen &&
        imagen2 == other.imagen2;
  }

  @override
  int get hashCode => const ListEquality().hash([imagen, imagen2]);
}

ImagenStruct createImagenStruct({
  String? imagen,
  DocumentReference? imagen2,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImagenStruct(
      imagen: imagen,
      imagen2: imagen2,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImagenStruct? updateImagenStruct(
  ImagenStruct? imagenStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imagenStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImagenStructData(
  Map<String, dynamic> firestoreData,
  ImagenStruct? imagenStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imagenStruct == null) {
    return;
  }
  if (imagenStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imagenStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imagenStructData = getImagenFirestoreData(imagenStruct, forFieldValue);
  final nestedData =
      imagenStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imagenStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImagenFirestoreData(
  ImagenStruct? imagenStruct, [
  bool forFieldValue = false,
]) {
  if (imagenStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imagenStruct.toMap());

  // Add any Firestore field values
  imagenStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImagenListFirestoreData(
  List<ImagenStruct>? imagenStructs,
) =>
    imagenStructs?.map((e) => getImagenFirestoreData(e, true)).toList() ?? [];
