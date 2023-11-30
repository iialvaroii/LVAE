import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'all_chats_page_model.dart';
export 'all_chats_page_model.dart';

class AllChatsPageWidget extends StatefulWidget {
  const AllChatsPageWidget({super.key});

  @override
  _AllChatsPageWidgetState createState() => _AllChatsPageWidgetState();
}

class _AllChatsPageWidgetState extends State<AllChatsPageWidget> {
  late AllChatsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllChatsPageModel());
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

    return StreamBuilder<List<ChatsRecord>>(
      stream: queryChatsRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Center(
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
        List<ChatsRecord> allChatsPageChatsRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Builder(
                      builder: (context) {
                        final chats = allChatsPageChatsRecordList
                            .where((e) =>
                                (e.userA == currentUserUid) &&
                                (e.userA == currentUserUid))
                            .toList();
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(chats.length, (chatsIndex) {
                            final chatsItem = chats[chatsIndex];
                            return Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 6.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'ChatPage',
                                          queryParameters: {
                                            'chatid': serializeParam(
                                              chatsItem.chatid,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: StreamBuilder<
                                              List<UsuarioRecord>>(
                                            stream: queryUsuarioRecord(
                                              queryBuilder: (usuarioRecord) =>
                                                  usuarioRecord.where(
                                                'uid',
                                                isEqualTo: chatsItem.userA ==
                                                        currentUserUid
                                                    ? chatsItem.userA
                                                    : chatsItem.userA,
                                              ),
                                            ),
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
                                              List<UsuarioRecord>
                                                  rowUsuarioRecordList =
                                                  snapshot.data!;
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    rowUsuarioRecordList.length,
                                                    (rowIndex) {
                                                  final rowUsuarioRecord =
                                                      rowUsuarioRecordList[
                                                          rowIndex];
                                                  return Container(
                                                    width: 40.0,
                                                    height: 40.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://picsum.photos/seed/702/600',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
