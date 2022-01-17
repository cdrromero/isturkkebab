import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrtegayGassetWidget extends StatefulWidget {
  const OrtegayGassetWidget({Key key}) : super(key: key);

  @override
  _OrtegayGassetWidgetState createState() => _OrtegayGassetWidgetState();
}

class _OrtegayGassetWidgetState extends State<OrtegayGassetWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE53434),
      body: SafeArea(
        child: FlutterFlowWebView(
          url: 'https://isturkkebab.es/av-jose-ortega-y-gasset/',
          bypass: false,
          verticalScroll: false,
          horizontalScroll: false,
        ),
      ),
    );
  }
}
