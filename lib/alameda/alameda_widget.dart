import '../alameda_pedido/alameda_pedido_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AlamedaWidget extends StatefulWidget {
  const AlamedaWidget({Key key}) : super(key: key);

  @override
  _AlamedaWidgetState createState() => _AlamedaWidgetState();
}

class _AlamedaWidgetState extends State<AlamedaWidget> {
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
                'assets/images/alameda.png',
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
                    'Isturk Alameda',
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
                    builder: (context) => AlamedaPedidoWidget(),
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
                    'Alameda Principal, 37\n29001 Málaga',
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
                      await launchURL('tel:+34-952229870');
                    },
                    child: Icon(
                      Icons.call,
                      color: Color(0xFFF8F5F5),
                      size: 60,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchURL('https://goo.gl/maps/59cpJTByELzPkFFB7');
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
