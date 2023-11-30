import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'lvae_model.dart';
export 'lvae_model.dart';

class LvaeWidget extends StatefulWidget {
  const LvaeWidget({super.key});

  @override
  _LvaeWidgetState createState() => _LvaeWidgetState();
}

class _LvaeWidgetState extends State<LvaeWidget> with TickerProviderStateMixin {
  late LvaeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LvaeModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Align(
                alignment: const Alignment(0.0, 0),
                child: TabBar(
                  labelColor: const Color(0xFFFDFD0E),
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  labelStyle: FlutterFlowTheme.of(context).titleMedium,
                  unselectedLabelStyle: const TextStyle(),
                  indicatorColor: const Color(0xFFFBFF00),
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                  tabs: [
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        'ygry72vf' /* LVAE */,
                      ),
                    ),
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        'berd7fan' /* CONTACTS */,
                      ),
                    ),
                  ],
                  controller: _model.tabBarController,
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Stack(
                          children: [
                            Opacity(
                              opacity: 0.8,
                              child: Align(
                                alignment: const AlignmentDirectional(0.13, 0.00),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/hombre-cima-montana-sol-brillando-sus-brazos_826801-1638.jpg',
                                    width: 373.0,
                                    height: 214.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-2.27, -1.02),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    40.0, 50.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'uu8ccgy8' /* EVERYTHING STARTS WITH A DREAM */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: AlignmentDirectional(0.00, 1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 70.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100.0,
                                        child: Divider(
                                          thickness: 3.0,
                                          color: Color(0xFFFBFF00),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.00, 1.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 100.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'jdy28ix3' /* Six years connecting the commu... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Align(
                              alignment: AlignmentDirectional(0.00, 1.02),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 1000.0,
                                        child: Divider(
                                          thickness: 5.0,
                                          color: Color(0xFFFBFF00),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.05, 0.92),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '6z2tyypx' /* About Us */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFFBFF00),
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.00, 1.09),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'qyf4u70c' /* Carlos Peralta along with Deni... */,
                                  ),
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7io0hdzu' /* Our Values */,
                                    ),
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFFBFF00),
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.handHoldingHeart,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 15.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '505h6hb1' /* INTEGRITY */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFFBFF00),
                                      ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'un0su3nb' /* On the road to success it is v... */,
                                    ),
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.handsHelping,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 34.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'mztwu9cu' /* ETHICS */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFFBFF00),
                                      ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      11.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '21fr839m' /* On the road to success we make... */,
                                    ),
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.ribbon,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'uqmejkft' /* EMPATHY */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFFBFF00),
                                      ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      30.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'eolb7kna' /* On the road to success we defi... */,
                                    ),
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.peopleCarry,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 34.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '906trikt' /* EFFORT */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFFBFF00),
                                      ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'm684n109' /* On the road to success we know... */,
                                    ),
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 100.0,
                      height: 174.0,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.rectangle,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        90.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://www.facebook.com/laviaalexito');
                                      },
                                      child: const FaIcon(
                                        FontAwesomeIcons.facebookSquare,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://www.instagram.com/laviaalexito/');
                                      },
                                      child: const FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://twitter.com/laviaalexito');
                                      },
                                      child: const FaIcon(
                                        FontAwesomeIcons.twitterSquare,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 30.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://www.youtube.com/channel/UCSazDGpDz-fg7utgdcogJmg/featured');
                                      },
                                      child: const FaIcon(
                                        FontAwesomeIcons.youtubeSquare,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 360.0,
                                      child: Divider(
                                        thickness: 3.0,
                                        indent: 30.0,
                                        color: Color(0xFFFBFF00),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 40.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'gqadomgr' /* location */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFF5F502),
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          45.5, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'j9zb0dfp' /* 345 Somerset Street Suite 9 No... */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 40.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: Icon(
                                      Icons.email_sharp,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'w8dy8i5r' /* E-mail */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFF5F502),
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          45.5, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '1re2ks4b' /* contact@laviaalexito.com */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 40.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'cpd1mu3f' /* Call us */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFF5F502),
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          45.5, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'exgtuq3z' /* 732-3197-884 */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Container(
                                width: 357.0,
                                height: 317.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Stack(
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchMap(
                                          address:
                                              '345 Somerset St Suit 9, North Plainfield, NJ 07060, EE. UU.',
                                          title: 'La Via Al Exito',
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Captura_de_pantalla_2023-11-30_081738.png',
                                          width: 357.0,
                                          height: 319.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.00, 0.00),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          't5v1zrdv' /* Pulsa el mapa */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBlack,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w800,
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
