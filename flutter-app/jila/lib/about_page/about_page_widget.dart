import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPageWidget extends StatefulWidget {
  AboutPageWidget({Key key}) : super(key: key);

  @override
  _AboutPageWidgetState createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Image.asset(
                        'assets/images/Screen_Shot_2021-09-03_at_4.07.01_pm.png',
                        width: double.infinity,
                        height: 255,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'About',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      color: Color(0xFFFFEBEE),
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Color(0xFFFCFBFB),
                    indicatorColor: FlutterFlowTheme.secondaryColor,
                    tabs: [
                      Tab(
                        text: 'About Us',
                      ),
                      Tab(
                        text: 'Contact Us',
                      ),
                      Tab(
                        text: 'Partners',
                      )
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Text(
                          'Tab View 1',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Playfair Display',
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          'Tab View 2',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Playfair Display',
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          'Tab View 3',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Playfair Display',
                            fontSize: 32,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
