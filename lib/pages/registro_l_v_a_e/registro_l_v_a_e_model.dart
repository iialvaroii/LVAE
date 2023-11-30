import '/flutter_flow/flutter_flow_util.dart';
import 'registro_l_v_a_e_widget.dart' show RegistroLVAEWidget;
import 'package:flutter/material.dart';

class RegistroLVAEModel extends FlutterFlowModel<RegistroLVAEWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameController?.dispose();

    correoFocusNode?.dispose();
    correoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
