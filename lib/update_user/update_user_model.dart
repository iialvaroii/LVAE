import '/flutter_flow/flutter_flow_util.dart';
import 'update_user_widget.dart' show UpdateUserWidget;
import 'package:flutter/material.dart';

class UpdateUserModel extends FlutterFlowModel<UpdateUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for nameup widget.
  FocusNode? nameupFocusNode;
  TextEditingController? nameupController;
  String? Function(BuildContext, String?)? nameupControllerValidator;
  // State field(s) for apellidoup widget.
  FocusNode? apellidoupFocusNode;
  TextEditingController? apellidoupController;
  String? Function(BuildContext, String?)? apellidoupControllerValidator;
  // State field(s) for emailup widget.
  FocusNode? emailupFocusNode;
  TextEditingController? emailupController;
  String? Function(BuildContext, String?)? emailupControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameupFocusNode?.dispose();
    nameupController?.dispose();

    apellidoupFocusNode?.dispose();
    apellidoupController?.dispose();

    emailupFocusNode?.dispose();
    emailupController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
