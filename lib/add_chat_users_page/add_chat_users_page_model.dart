import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_chat_users_page_widget.dart' show AddChatUsersPageWidget;
import 'package:flutter/material.dart';

class AddChatUsersPageModel extends FlutterFlowModel<AddChatUsersPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CheckboxListTile widget.

  Map<UsuarioRecord, bool> checkboxListTileValueMap = {};
  List<UsuarioRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
