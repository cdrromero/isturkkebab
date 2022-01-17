import '../cala_pedido/cala_pedido_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LaCalaWidget extends StatefulWidget {
  const LaCalaWidget({Key key}) : super(key: key);

  @override
  _LaCalaWidgetState createState() => _LaCalaWidgetState();
}

class _LaCalaWidgetState extends State<LaCalaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE53434),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/LA_CALA.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Isturk La Cala del Moral',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFFEFEFE),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalaPedidoWidget(),
                  ),
                );
              },
              text: 'HACER PEDIDO',
              icon: FaIcon(
                FontAwesomeIcons.mobile,
              ),
              options: FFButtonOptions(
                width: 230,
                height: 40,
                color: Colors.white,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFF02121),
                  fontWeight: FontWeight.bold,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    ' Av. de Málaga, 111, 29720\n La Cala del Moral, Málaga',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            Expanded(
              child: GridView(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 1,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchURL('tel:+34-951921055');
                    },
                    child: Icon(
                      Icons.call,
                      color: Color(0xFFF8F5F5),
                      size: 60,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchURL('https://goo.gl/maps/Fr1uybAf3whiDha76');
                    },
                    child: Icon(
                      Icons.gps_fixed_sharp,
                      color: Color(0xFFF8F5F5),
                      size: 60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
