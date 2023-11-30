import '/flutter_flow/flutter_flow_util.dart';
import 'crete_post_widget.dart' show CretePostWidget;
import 'package:flutter/material.dart';

class CretePostModel extends FlutterFlowModel<CretePostWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for titulo_post widget.
  FocusNode? tituloPostFocusNode;
  TextEditingController? tituloPostController;
  String? Function(BuildContext, String?)? tituloPostControllerValidator;
  // State field(s) for descrip_post widget.
  FocusNode? descripPostFocusNode;
  TextEditingController? descripPostController;
  String? Function(BuildContext, String?)? descripPostControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloPostFocusNode?.dispose();
    tituloPostController?.dispose();

    descripPostFocusNode?.dispose();
    descripPostController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
