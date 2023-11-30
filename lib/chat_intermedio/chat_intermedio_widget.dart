import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'chat_intermedio_model.dart';
export 'chat_intermedio_model.dart';

class ChatIntermedioWidget extends StatefulWidget {
  const ChatIntermedioWidget({
    super.key,
    required this.otrous,
  });

  final String? otrous;

  @override
  _ChatIntermedioWidgetState createState() => _ChatIntermedioWidgetState();
}

class _ChatIntermedioWidgetState extends State<ChatIntermedioWidget> {
  late ChatIntermedioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatIntermedioModel());

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

    return StreamBuilder<List<UsuarioRecord>>(
      stream: queryUsuarioRecord(
        queryBuilder: (usuarioRecord) => usuarioRecord.where(
          'display_name',
          isEqualTo: widget.otrous,
        ),
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
        List<UsuarioRecord> chatIntermedioUsuarioRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final chatIntermedioUsuarioRecord =
            chatIntermedioUsuarioRecordList.isNotEmpty
                ? chatIntermedioUsuarioRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Container(
                                  width: 30.0,
                                  height: 30.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    chatIntermedioUsuarioRecord!.photoUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                chatIntermedioUsuarioRecord.displayName,
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Icon(
                        Icons.settings_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                  StyledDivider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                    lineStyle: DividerLineStyle.dashdotted,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 1.00),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Container(
                              width: 389.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 6.0, 8.0, 6.0),
                                      child: SizedBox(
                                        width: 280.0,
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            const Duration(milliseconds: 1000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'awqiz2vq' /* Escribe tu mensaje */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 5.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 5.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 5.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 5.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLines: 5,
                                          minLines: 1,
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (_model.textController.text != '')
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await ChatsRecord.collection
                                            .doc()
                                            .set(createChatsRecordData(
                                              userB: chatIntermedioUsuarioRecord
                                                  .uid,
                                              chatid:
                                                  '${chatIntermedioUsuarioRecord.uid}$currentUserUid',
                                              lastMessage:
                                                  _model.textController.text,
                                              lastMessageTime:
                                                  getCurrentTimestamp,
                                              userA: currentUserUid,
                                              createTime: getCurrentTimestamp,
                                            ));

                                        await ChatMessagesRecord.collection
                                            .doc()
                                            .set(createChatMessagesRecordData(
                                              text: _model.textController.text,
                                              timestamp: getCurrentTimestamp,
                                              chatid:
                                                  '${chatIntermedioUsuarioRecord.uid}$currentUserUid',
                                              user: currentUserUid,
                                            ));

                                        context.goNamed(
                                          'ChatPage',
                                          queryParameters: {
                                            'chatid': serializeParam(
                                              '${chatIntermedioUsuarioRecord.uid}$currentUserUid',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: const Icon(
                                        Icons.send_sharp,
                                        color: Color(0xFF732AEC),
                                        size: 24.0,
                                      ),
                                    ),
                                  if (_model.textController.text == '')
                                    Icon(
                                      Icons.send_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
