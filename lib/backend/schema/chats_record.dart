import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "last_message_sent_by" field.
  DocumentReference? _lastMessageSentBy;
  DocumentReference? get lastMessageSentBy => _lastMessageSentBy;
  bool hasLastMessageSentBy() => _lastMessageSentBy != null;

  // "chatid" field.
  String? _chatid;
  String get chatid => _chatid ?? '';
  bool hasChatid() => _chatid != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "last_message_seen_by" field.
  List<DocumentReference>? _lastMessageSeenBy;
  List<DocumentReference> get lastMessageSeenBy =>
      _lastMessageSeenBy ?? const [];
  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "user_a" field.
  String? _userA;
  String get userA => _userA ?? '';
  bool hasUserA() => _userA != null;

  // "user_b" field.
  String? _userB;
  String get userB => _userB ?? '';
  bool hasUserB() => _userB != null;

  void _initializeFields() {
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _lastMessageSentBy =
        snapshotData['last_message_sent_by'] as DocumentReference?;
    _chatid = snapshotData['chatid'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _lastMessageSeenBy = getDataList(snapshotData['last_message_seen_by']);
    _users = getDataList(snapshotData['users']);
    _userA = snapshotData['user_a'] as String?;
    _userB = snapshotData['user_b'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? lastMessage,
  DateTime? lastMessageTime,
  DocumentReference? lastMessageSentBy,
  String? chatid,
  DateTime? createTime,
  String? userA,
  String? userB,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
      'last_message_sent_by': lastMessageSentBy,
      'chatid': chatid,
      'create_time': createTime,
      'user_a': userA,
      'user_b': userB,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        e1?.lastMessageSentBy == e2?.lastMessageSentBy &&
        e1?.chatid == e2?.chatid &&
        e1?.createTime == e2?.createTime &&
        listEquality.equals(e1?.lastMessageSeenBy, e2?.lastMessageSeenBy) &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.lastMessage,
        e?.lastMessageTime,
        e?.lastMessageSentBy,
        e?.chatid,
        e?.createTime,
        e?.lastMessageSeenBy,
        e?.users,
        e?.userA,
        e?.userB
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
