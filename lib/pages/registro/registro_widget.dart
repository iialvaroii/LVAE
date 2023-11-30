import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'registro_model.dart';
export 'registro_model.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({super.key});

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  late RegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroModel());

    _model.usernameController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.lastNameController ??= TextEditingController();
    _model.lastNameFocusNode ??= FocusNode();

    _model.correoController ??= TextEditingController();
    _model.correoFocusNode ??= FocusNode();

    _model.contraseController ??= TextEditingController();
    _model.contraseFocusNode ??= FocusNode();

    _model.confContraseController ??= TextEditingController();
    _model.confContraseFocusNode ??= FocusNode();
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
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                30.0, 15.0, 5.0, 0.0),
                            child: TextFormField(
                              controller: _model.usernameController,
                              focusNode: _model.usernameFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontStyle: FontStyle.italic,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '5agmsd78' /* Nombre */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontStyle: FontStyle.italic,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFF0D0D0D),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                filled: true,
                                fillColor: const Color(0xFFE7E717),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF0D0D0D),
                                  ),
                              textAlign: TextAlign.justify,
                              validator: _model.usernameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 15.0, 30.0, 0.0),
                            child: TextFormField(
                              controller: _model.lastNameController,
                              focusNode: _model.lastNameFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyLarge,
                                hintText: FFLocalizations.of(context).getText(
                                  '6wxvzuvq' /* Apellido */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.lastNameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30.0, 40.0, 30.0, 0.0),
                        child: TextFormField(
                          controller: _model.correoController,
                          focusNode: _model.correoFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context).bodyLarge,
                            hintText: FFLocalizations.of(context).getText(
                              'dz44euqx' /* Correo */,
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF0D0D0D),
                                  ),
                          validator: _model.correoControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30.0, 10.0, 30.0, 0.0),
                        child: TextFormField(
                          controller: _model.contraseController,
                          focusNode: _model.contraseFocusNode,
                          autofocus: true,
                          obscureText: !_model.contraseVisibility,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context).bodyLarge,
                            hintText: FFLocalizations.of(context).getText(
                              'ogbz87lf' /* Contraseña */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      fontStyle: FontStyle.italic,
                                    ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
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
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model.contraseVisibility =
                                    !_model.contraseVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.contraseVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                          validator: _model.contraseControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30.0, 10.0, 30.0, 0.0),
                        child: TextFormField(
                          controller: _model.confContraseController,
                          focusNode: _model.confContraseFocusNode,
                          autofocus: true,
                          textCapitalization: TextCapitalization.none,
                          obscureText: !_model.confContraseVisibility,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context).bodyLarge,
                            hintText: FFLocalizations.of(context).getText(
                              '5vg16xfz' /* Confirmar contraseña */,
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
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model.confContraseVisibility =
                                    !_model.confContraseVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.confContraseVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.confContraseControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(120.0, 30.0, 60.0, 20.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Function() navigate = () {};
                        if (functions
                            .newCustomFunction(_model.correoController.text)) {
                          GoRouter.of(context).prepareAuthEvent();
                          if (_model.contraseController.text !=
                              _model.confContraseController.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getText(
                                    'xvzbi18s' /* La contraseña no coincide */,
                                  ),
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await authManager.createAccountWithEmail(
                            context,
                            _model.correoController.text,
                            _model.contraseController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          await UsuarioRecord.collection
                              .doc(user.uid)
                              .update(createUsuarioRecordData(
                                email: _model.correoController.text,
                                photoUrl:
                                    'https://img.freepik.com/vector-premium/icono-perfil-usuario-estilo-plano-ilustracion-vector-avatar-miembro-sobre-fondo-aislado-concepto-negocio-signo-permiso-humano_157943-15752.jpg',
                                contrase: _model.contraseController.text,
                                isadmin: false,
                                lastName: _model.lastNameController.text,
                                userName: _model.usernameController.text,
                              ));

                          navigate = () =>
                              context.goNamedAuth('Posts', context.mounted);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('wrong email'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }

                        navigate();
                      },
                      text: FFLocalizations.of(context).getText(
                        'h4vfkl08' /* Crear cuenta */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFE7E717),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 300.0,
                  child: Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('HomePage');
                    },
                    text: FFLocalizations.of(context).getText(
                      '6gtbv93h' /* Login */,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x004B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xF6FFFFFF),
                                fontStyle: FontStyle.italic,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Color(0xFFE7E717),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
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
