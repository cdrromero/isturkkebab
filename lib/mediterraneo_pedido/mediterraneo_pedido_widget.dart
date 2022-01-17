import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediterraneoPedidoWidget extends StatefulWidget {
  const MediterraneoPedidoWidget({Key key}) : super(key: key);

  @override
  _MediterraneoPedidoWidgetState createState() =>
      _MediterraneoPedidoWidgetState();
}

class _MediterraneoPedidoWidgetState extends State<MediterraneoPedidoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: FlutterFlowWebView(
          url: 'https://www.foodbooking.com/api/fb/zrbk',
          bypass: false,
          verticalScroll: false,
          horizontalScroll: false,
        ),
      ),
    );
  }
}
