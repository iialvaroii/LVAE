import '/flutter_flow/flutter_flow_util.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  String? _usernameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fzqzkcxx' /* Campo requerido */,
      );
    }

    return null;
  }

  // State field(s) for last_name widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bpxgx866' /* Campo requerido */,
      );
    }

    return null;
  }

  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  String? _correoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hsfel6hs' /* Campo requerido */,
      );
    }

    return null;
  }

  // State field(s) for contrase widget.
  FocusNode? contraseFocusNode;
  TextEditingController? contraseController;
  late bool contraseVisibility;
  String? Function(BuildContext, String?)? contraseControllerValidator;
  String? _contraseControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qmkun2l0' /* Campo requerido */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'cpbjhqge' /* Minimo 8 caracteres */,
      );
    }

    return null;
  }

  // State field(s) for conf_contrase widget.
  FocusNode? confContraseFocusNode;
  TextEditingController? confContraseController;
  late bool confContraseVisibility;
  String? Function(BuildContext, String?)? confContraseControllerValidator;
  String? _confContraseControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3ilgqmcz' /* Campo requerido */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    usernameControllerValidator = _usernameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    correoControllerValidator = _correoControllerValidator;
    contraseVisibility = false;
    contraseControllerValidator = _contraseControllerValidator;
    confContraseVisibility = false;
    confContraseControllerValidator = _confContraseControllerValidator;
  }

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    correoFocusNode?.dispose();
    correoController?.dispose();

    contraseFocusNode?.dispose();
    contraseController?.dispose();

    confContraseFocusNode?.dispose();
    confContraseController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
