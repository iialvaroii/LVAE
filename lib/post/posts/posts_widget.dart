import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'posts_model.dart';
export 'posts_model.dart';

class PostsWidget extends StatefulWidget {
  const PostsWidget({super.key});

  @override
  _PostsWidgetState createState() => _PostsWidgetState();
}

class _PostsWidgetState extends State<PostsWidget> {
  late PostsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostsModel());
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBlack,
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<PostRecord>>(
                          stream: queryPostRecord(),
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
                            List<PostRecord> listViewPostRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewPostRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewPostRecord =
                                    listViewPostRecordList[listViewIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: StreamBuilder<UsuarioRecord>(
                                    stream: UsuarioRecord.getDocument(
                                        listViewPostRecord.postUsu!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0xFFFBF310),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final containerUsuarioRecord =
                                          snapshot.data!;
                                      return Container(
                                        width: double.infinity,
                                        constraints: const BoxConstraints(
                                          maxWidth: double.infinity,
                                          maxHeight: double.infinity,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFE4D4D4),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 15.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        5.0,
                                                                        10.0),
                                                            child: Text(
                                                              listViewPostRecord
                                                                  .titulo,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      StreamBuilder<
                                                          List<ChatsRecord>>(
                                                        stream:
                                                            queryChatsRecord(
                                                          queryBuilder:
                                                              (chatsRecord) =>
                                                                  chatsRecord
                                                                      .where(
                                                            'chatid',
                                                            isEqualTo:
                                                                '${containerUsuarioRecord.uid}$currentUserUid',
                                                          ),
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return const Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    Color(
                                                                        0xFFFBF310),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<ChatsRecord>
                                                              textChatsRecordList =
                                                              snapshot.data!;
                                                          // Return an empty Container when the item does not exist.
                                                          if (snapshot
                                                              .data!.isEmpty) {
                                                            return Container();
                                                          }
                                                          final textChatsRecord =
                                                              textChatsRecordList
                                                                      .isNotEmpty
                                                                  ? textChatsRecordList
                                                                      .first
                                                                  : null;
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              if (textChatsRecord
                                                                      ?.reference !=
                                                                  null) {
                                                                context
                                                                    .pushNamed(
                                                                  'ChatPage',
                                                                  queryParameters:
                                                                      {
                                                                    'chatid':
                                                                        serializeParam(
                                                                      textChatsRecord
                                                                          ?.chatid,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        const TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                context
                                                                    .pushNamed(
                                                                  'chat_intermedio',
                                                                  queryParameters:
                                                                      {
                                                                    'otrous':
                                                                        serializeParam(
                                                                      containerUsuarioRecord
                                                                          .uid,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        const TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              }
                                                            },
                                                            child: Text(
                                                              containerUsuarioRecord
                                                                  .displayName,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 8.0, 16.0,
                                                          12.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    child: Image.network(
                                                      listViewPostRecord.foto,
                                                      width: double.infinity,
                                                      height: 230.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 4.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            listViewPostRecord
                                                                .descripcion,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 10.0,
                                                          16.0, 20.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'comentarios',
                                                              queryParameters: {
                                                                'post':
                                                                    serializeParam(
                                                                  listViewPostRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'i5sexa1j' /* Comentarios ... */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  lineHeight:
                                                                      2.5,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewPostRecord
                                                              .likeUsu.length
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                      ToggleIcon(
                                                        onPressed: () async {
                                                          final likeUsuElement =
                                                              currentUserReference;
                                                          final likeUsuUpdate =
                                                              listViewPostRecord
                                                                      .likeUsu
                                                                      .contains(
                                                                          likeUsuElement)
                                                                  ? FieldValue
                                                                      .arrayRemove([
                                                                      likeUsuElement
                                                                    ])
                                                                  : FieldValue
                                                                      .arrayUnion([
                                                                      likeUsuElement
                                                                    ]);
                                                          await listViewPostRecord
                                                              .reference
                                                              .update({
                                                            ...mapToFirestore(
                                                              {
                                                                'like_usu':
                                                                    likeUsuUpdate,
                                                              },
                                                            ),
                                                          });
                                                        },
                                                        value: listViewPostRecord
                                                            .likeUsu
                                                            .contains(
                                                                currentUserReference),
                                                        onIcon: const Icon(
                                                          Icons
                                                              .favorite_rounded,
                                                          color:
                                                              Color(0xFFE51723),
                                                          size: 25.0,
                                                        ),
                                                        offIcon: FaIcon(
                                                          FontAwesomeIcons
                                                              .heart,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 25.0,
                                                        ),
                                                      ),
                                                      if (valueOrDefault<bool>(
                                                          currentUserDocument
                                                              ?.isadmin,
                                                          false))
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              FlutterFlowIconButton(
                                                            borderColor: const Color(
                                                                0x004B39EF),
                                                            borderRadius: 20.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            fillColor: const Color(
                                                                0x004B39EF),
                                                            icon: Icon(
                                                              Icons
                                                                  .delete_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              await listViewPostRecord
                                                                  .reference
                                                                  .delete();
                                                            },
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
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                if (valueOrDefault<bool>(currentUserDocument?.isadmin, false))
                  Align(
                    alignment: const AlignmentDirectional(0.63, 0.83),
                    child: AuthUserStreamWidget(
                      builder: (context) => FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 55.0,
                        fillColor: const Color(0xFF030101),
                        icon: const Icon(
                          Icons.add,
                          color: Color(0xFFFFFF00),
                          size: 30.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          context.pushNamed('crete_post');
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
