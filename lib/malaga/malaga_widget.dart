import '../alameda/alameda_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ortegaygasset/ortegaygasset_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MalagaWidget extends StatefulWidget {
  const MalagaWidget({Key key}) : super(key: key);

  @override
  _MalagaWidgetState createState() => _MalagaWidgetState();
}

class _MalagaWidgetState extends State<MalagaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF53535),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(-0.1, -1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      'https://isturkkebab.es/wp-content/uploads/2019/02/Logo-Prov.png',
                      width: 350,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFEF3B3B),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0.05),
                                child: Text(
                                  'Selecciona tu restaurante',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFFBFB),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.35, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AlamedaWidget(),
                                    ),
                                  );
                                },
                                text: 'Alameda Principal 35',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 40,
                                  color: Color(0xFFF02121),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ),
                          ),
                          Divider(),
                          Align(
                            alignment: AlignmentDirectional(0.35, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          OrtegaygassetWidget(),
                                    ),
                                  );
                                },
                                text: 'Av. José Ortega y Gasset 139',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 40,
                                  color: Color(0xFFF02121),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ),
                          ),
                          Divider(),
                        ],
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
  }
}
