import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'recover_pass_model.dart';
export 'recover_pass_model.dart';

class RecoverPassWidget extends StatefulWidget {
  const RecoverPassWidget({super.key});

  @override
  _RecoverPassWidgetState createState() => _RecoverPassWidgetState();
}

class _RecoverPassWidgetState extends State<RecoverPassWidget> {
  late RecoverPassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecoverPassModel());

    _model.emailAddressRecoverController ??= TextEditingController();
    _model.emailAddressRecoverFocusNode ??= FocusNode();
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
              '8gb93fj1' /* Recuperar contraseña */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: const Color(0xFFFDFD0E),
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ly2xv1pq' /* Le enviaremos un correo electr... */,
                          ),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF0B0B0B),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.emailAddressRecoverController,
                        focusNode: _model.emailAddressRecoverFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF0B0B0B),
                                    fontStyle: FontStyle.italic,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'eabdw0iz' /* Introduce tu dirección de corr... */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF0B0B0B),
                                    fontStyle: FontStyle.italic,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFFBF310),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF0B0B0B),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF0B0B0B),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF0B0B0B),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFBF310),
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                        ),
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        validator: _model.emailAddressRecoverControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model
                              .emailAddressRecoverController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getText(
                                    'vy2riaww' /* Correo requerido */,
                                  ),
                                ),
                              ),
                            );
                            return;
                          }
                          await authManager.resetPassword(
                            email: _model.emailAddressRecoverController.text,
                            context: context,
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'bc63b8cj' /* Enviar */,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF0B0B0B),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFFDFD0E),
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Color(0xFFEBE7E7),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
  }
}
