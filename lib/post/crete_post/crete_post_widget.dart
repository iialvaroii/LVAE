import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'crete_post_model.dart';
export 'crete_post_model.dart';

class CretePostWidget extends StatefulWidget {
  const CretePostWidget({super.key});

  @override
  _CretePostWidgetState createState() => _CretePostWidgetState();
}

class _CretePostWidgetState extends State<CretePostWidget> {
  late CretePostModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CretePostModel());

    _model.tituloPostController ??= TextEditingController();
    _model.tituloPostFocusNode ??= FocusNode();

    _model.descripPostController ??= TextEditingController();
    _model.descripPostFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return StreamBuilder<List<UsuarioRecord>>(
      stream: queryUsuarioRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFFBF310),
                  ),
                ),
              ),
            ),
          );
        }
        List<UsuarioRecord> cretePostUsuarioRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final cretePostUsuarioRecord = cretePostUsuarioRecordList.isNotEmpty
            ? cretePostUsuarioRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, _) => [
              SliverAppBar(
                pinned: false,
                floating: false,
                backgroundColor: FlutterFlowTheme.of(context).primaryBlack,
                automaticallyImplyLeading: false,
                leading: Align(
                  alignment: const AlignmentDirectional(-1.00, -1.00),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xFFFDFD0E),
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'n3nllntp' /* Título de la página */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: const Color(0xFFFDFD0E),
                        fontSize: 22.0,
                      ),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 2.0,
              )
            ],
            body: Builder(
              builder: (context) {
                return Container(
                  width: 1000.0,
                  height: 1000.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: const AlignmentDirectional(0.00, -1.00),
                      image: Image.asset(
                        'assets/images/LVAE_Background.jpg',
                      ).image,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).primary,
                        FlutterFlowTheme.of(context).secondary
                      ],
                      stops: const [0.0, 0.0],
                      begin: const AlignmentDirectional(0.0, -1.0),
                      end: const AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 25.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'fvqawb9k' /* Crear post */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFFDFD0E),
                                          fontSize: 28.0,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 355.0,
                          height: 240.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls = (await Future.wait(
                                    selectedMedia.map(
                                      (m) async => await uploadData(
                                          m.storagePath, m.bytes),
                                    ),
                                  ))
                                      .where((u) => u != null)
                                      .map((u) => u!)
                                      .toList();
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl = downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                _model.uploadedFileUrl,
                                width: 298.0,
                                height: 400.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(0.00, -1.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'xsmr22q6' /* Titulo: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFFFDFD0E),
                                              fontStyle: FontStyle.italic,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.tituloPostController,
                                      focusNode: _model.tituloPostFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          't7hx7lju' /* Escribe aqui... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFFFDFD0E),
                                              fontStyle: FontStyle.italic,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xF6FFFFFF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xF6FFFFFF),
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .tituloPostControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                25.0, 15.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'w3hsir9z' /* Descripción: */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFFDFD0E),
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, -1.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 10.0, 15.0, 0.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.descripPostController,
                                        focusNode: _model.descripPostFocusNode,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xF6FFFFFF),
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'wmde3icm' /* Etiqueta aquí.... */,
                                          ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFFFDFD0E),
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                          errorStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFFE51723),
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFFDFD0E),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFFDFD0E),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFFF0000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFF0B0B0B),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xF6FFFFFF),
                                            ),
                                        maxLines: null,
                                        maxLength: 60,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.none,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .descripPostControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 2.0),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-0.13, -0.39),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title:
                                                        const Text('Esta seguro ?'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                false),
                                                        child: const Text('Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                true),
                                                        child: const Text('Confirm'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ) ??
                                              false;

                                      await PostRecord.collection
                                          .doc()
                                          .set(createPostRecordData(
                                            foto: _model.uploadedFileUrl,
                                            descripcion: _model
                                                .descripPostController.text,
                                            titulo: _model
                                                .tituloPostController.text,
                                            postUsu: currentUserReference,
                                          ));
                                      setState(() {
                                        _model.tituloPostController?.clear();
                                        _model.descripPostController?.clear();
                                      });
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'u6mpg45d' /* Crear */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFFDFD0E),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF0B0B0B),
                                            fontStyle: FontStyle.italic,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0B0B0B),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
