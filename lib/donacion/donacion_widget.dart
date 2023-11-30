import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'donacion_model.dart';
export 'donacion_model.dart';

class DonacionWidget extends StatefulWidget {
  const DonacionWidget({super.key});

  @override
  _DonacionWidgetState createState() => _DonacionWidgetState();
}

class _DonacionWidgetState extends State<DonacionWidget> {
  late DonacionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonacionModel());
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
            Align(
              alignment: const AlignmentDirectional(0.00, 1.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'r96barky' /* Toma Acción AHORA */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFFDFD0E),
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 300.0,
              child: Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Opacity(
                    opacity: 0.0,
                    child: SizedBox(
                      height: 100.0,
                      child: VerticalDivider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, -1.00),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'iaq1vl97' /* Su donación puede ayudara una
... */
                      ,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFCFFFFFF),
                          fontSize: 18.0,
                        ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await launchURL(
                            'https://donorbox.org/embed/la-via-al-exito-fundraiser');
                      },
                      text: FFLocalizations.of(context).getText(
                        '2q4iu438' /* Dona Ahora */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFFDFD0E),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryBlack,
                            ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300.0,
              child: Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'anidb8kn' /* Sea un Voluntario
 */
                      ,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFCFFFFFF),
                          fontSize: 18.0,
                        ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    await launchURL('https://laviaalexito.org/es/');
                  },
                  text: FFLocalizations.of(context).getText(
                    '8sioubwz' /* Mas información */,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFEFFFFFF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBlack,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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
