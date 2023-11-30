import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'registro_l_v_a_e_model.dart';
export 'registro_l_v_a_e_model.dart';

class RegistroLVAEWidget extends StatefulWidget {
  const RegistroLVAEWidget({super.key});

  @override
  _RegistroLVAEWidgetState createState() => _RegistroLVAEWidgetState();
}

class _RegistroLVAEWidgetState extends State<RegistroLVAEWidget> {
  late RegistroLVAEModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroLVAEModel());

    _model.usernameController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.correoController ??= TextEditingController();
    _model.correoFocusNode ??= FocusNode();
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0x004B39EF),
      body: Container(
        width: 494.0,
        height: 794.0,
        constraints: const BoxConstraints(
          minWidth: double.infinity,
          minHeight: double.infinity,
          maxWidth: double.infinity,
          maxHeight: double.infinity,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.asset(
              'assets/images/LVAE_Background.jpg',
            ).image,
          ),
          gradient: const LinearGradient(
            colors: [Color(0xFF0C0C0C), Color(0xFF506260), Color(0xFFF8E4E4)],
            stops: [0.0, 1.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xFFF1EEEE),
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/LVAE_MockUp-removebg-preview.png',
                      width: 353.0,
                      height: 227.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 0.0),
                    child: TextFormField(
                      controller: _model.usernameController,
                      focusNode: _model.usernameFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: FlutterFlowTheme.of(context).bodyLarge,
                        hintText: FFLocalizations.of(context).getText(
                          '5kt6907m' /* Nombre
 */
                          ,
                        ),
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Readex Pro',
                                  fontStyle: FontStyle.italic,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0D0D0D),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFE7E717),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF0D0D0D),
                          ),
                      validator: _model.usernameControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 0.0),
                    child: TextFormField(
                      controller: _model.correoController,
                      focusNode: _model.correoFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: FlutterFlowTheme.of(context).bodyLarge,
                        hintText: FFLocalizations.of(context).getText(
                          'ft7ogxxy' /* Correo */,
                        ),
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Readex Pro',
                                  fontStyle: FontStyle.italic,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF0D0D0D),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFE7E717),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF0D0D0D),
                          ),
                      validator:
                          _model.correoControllerValidator.asValidator(context),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: StreamBuilder<List<UsuarioRecord>>(
                        stream: queryUsuarioRecord(
                          singleRecord: true,
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
                          List<UsuarioRecord> crearUsuarioRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final crearUsuarioRecord =
                              crearUsuarioRecordList.isNotEmpty
                                  ? crearUsuarioRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              if (functions
                                  .filtroLVAE(_model.correoController.text)) {
                                if (_model.correoController.text ==
                                    crearUsuarioRecord?.email) {
                                  var confirmDialogResponse =
                                      await showDialog<bool>(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text(
                                                    '¿Desea hacer administrador a este usuario?'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: const Text('Cancelar'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: const Text('Confirmar'),
                                                  ),
                                                ],
                                              );
                                            },
                                          ) ??
                                          false;

                                  await currentUserReference!
                                      .update(createUsuarioRecordData(
                                    email: _model.correoController.text,
                                    userName: _model.usernameController.text,
                                    isadmin: true,
                                  ));
                                } else {
                                  var confirmDialogResponse = await showDialog<
                                          bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('El correo no existe'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: const Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                                }
                              } else {
                                var confirmDialogResponse = await showDialog<
                                        bool>(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Su correo no es valido'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext, false),
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext, true),
                                              child: const Text('Confirm'),
                                            ),
                                          ],
                                        );
                                      },
                                    ) ??
                                    false;
                              }
                            },
                            text: FFLocalizations.of(context).getText(
                              'qhzw5r8m' /* Otorgar permisos */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFE7E717),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF0D0D0D),
                                    fontStyle: FontStyle.italic,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
