import '/flutter_flow/flutter_flow_util.dart';
import 'recover_pass_widget.dart' show RecoverPassWidget;
import 'package:flutter/material.dart';

class RecoverPassModel extends FlutterFlowModel<RecoverPassWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddressRecover widget.
  FocusNode? emailAddressRecoverFocusNode;
  TextEditingController? emailAddressRecoverController;
  String? Function(BuildContext, String?)?
      emailAddressRecoverControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressRecoverFocusNode?.dispose();
    emailAddressRecoverController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
