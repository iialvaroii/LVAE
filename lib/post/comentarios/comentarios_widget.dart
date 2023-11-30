import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'comentarios_model.dart';
export 'comentarios_model.dart';

class ComentariosWidget extends StatefulWidget {
  const ComentariosWidget({
    super.key,
    required this.post,
  });

  final DocumentReference? post;

  @override
  _ComentariosWidgetState createState() => _ComentariosWidgetState();
}

class _ComentariosWidgetState extends State<ComentariosWidget> {
  late ComentariosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComentariosModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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

    return StreamBuilder<PostRecord>(
      stream: PostRecord.getDocument(widget.post!),
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
        final comentariosPostRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBlack,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
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
              title: Text(
                FFLocalizations.of(context).getText(
                  'kei7xwf9' /* Título de la página */,
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
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.00, 1.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 10.0),
                              child: Text(
                                comentariosPostRecord.titulo,
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                comentariosPostRecord.foto,
                                width: double.infinity,
                                height: 230.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      comentariosPostRecord.descripcion,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 10.0, 16.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '0wde4emr' /* Comentarios ... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF0D0D0D),
                                          lineHeight: 2.5,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      18.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'mu5df62o' /* Comentario */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: FlutterFlowIconButton(
                                  borderColor: const Color(0xFFECD4D4),
                                  borderRadius: 10.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0xFFFDFD0E),
                                  icon: Icon(
                                    Icons.send_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await ComentRecord.collection
                                        .doc()
                                        .set(createComentRecordData(
                                          mensaje: _model.textController.text,
                                          createBy: currentUserReference,
                                          tiempBy: getCurrentTimestamp,
                                          producto: widget.post,
                                        ));
                                    setState(() {
                                      _model.textController?.clear();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 369.0,
                    height: 296.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: StreamBuilder<List<ComentRecord>>(
                      stream: queryComentRecord(
                        queryBuilder: (comentRecord) => comentRecord
                            .where(
                              'producto',
                              isEqualTo: widget.post,
                            )
                            .orderBy('tiempBy', descending: true),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return const Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFFFBF310),
                                ),
                              ),
                            ),
                          );
                        }
                        List<ComentRecord> listViewComentRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewComentRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewComentRecord =
                                listViewComentRecordList[listViewIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/702/600',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: StreamBuilder<UsuarioRecord>(
                                              stream: UsuarioRecord.getDocument(
                                                  listViewComentRecord
                                                      .createBy!),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return const Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          Color(0xFFFBF310),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final nomUsUsuarioRecord =
                                                    snapshot.data!;
                                                return Text(
                                                  nomUsUsuarioRecord.userName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: Icon(
                                              Icons.av_timer,
                                              color: Color(0xFFFDFD0E),
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.00, 0.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 15.0, 0.0),
                                            child: Text(
                                              dateTimeFormat(
                                                'relative',
                                                listViewComentRecord.tiempBy!,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 25.0),
                                  child: Container(
                                    width: 366.0,
                                    height: 53.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF506260),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 0.0, 1.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    listViewComentRecord
                                                        .mensaje,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (comentariosPostRecord
                                                      .coments
                                                      .contains(
                                                          currentUserReference))
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          const Color(0x004B39EF),
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          const Color(0x004B39EF),
                                                      icon: const Icon(
                                                        Icons
                                                            .delete_outline_rounded,
                                                        color:
                                                            Color(0xFFFAF1F1),
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
