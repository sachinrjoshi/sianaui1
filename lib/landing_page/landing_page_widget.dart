import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({Key key}) : super(key: key);

  @override
  _LandingPageWidgetState createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  String dDCarMakeValue;
  String dDCarModelValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Small-Logo-small.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                  child: Text(
                    'Add Car',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFB20D0D),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StreamBuilder<List<AppconfigdataRecord>>(
                  stream: queryAppconfigdataRecord(
                    queryBuilder: (appconfigdataRecord) =>
                        appconfigdataRecord.where('type', isEqualTo: 'carmake'),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.primaryColor,
                          ),
                        ),
                      );
                    }
                    List<AppconfigdataRecord> dDCarMakeAppconfigdataRecordList =
                        snapshot.data;
                    // Return an empty Container when the document does not exist.
                    if (snapshot.data.isEmpty) {
                      return Container();
                    }
                    final dDCarMakeAppconfigdataRecord =
                        dDCarMakeAppconfigdataRecordList.isNotEmpty
                            ? dDCarMakeAppconfigdataRecordList.first
                            : null;
                    return FlutterFlowDropDown(
                      initialOption: dDCarMakeValue ??= 'Select Car Make',
                      options: dDCarMakeAppconfigdataRecord.valuearray.toList(),
                      onChanged: (val) => setState(() => dDCarMakeValue = val),
                      width: 350,
                      height: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFB20D0D),
                      ),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFFB20D0D),
                        size: 15,
                      ),
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 0,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StreamBuilder<List<AppconfigdataRecord>>(
                    stream: queryAppconfigdataRecord(
                      queryBuilder: (appconfigdataRecord) => appconfigdataRecord
                          .where('key', isEqualTo: dDCarModelValue),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                        );
                      }
                      List<AppconfigdataRecord>
                          dDCarModelAppconfigdataRecordList = snapshot.data;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data.isEmpty) {
                        return Container();
                      }
                      final dDCarModelAppconfigdataRecord =
                          dDCarModelAppconfigdataRecordList.isNotEmpty
                              ? dDCarModelAppconfigdataRecordList.first
                              : null;
                      return FlutterFlowDropDown(
                        initialOption: dDCarModelValue ??= 'Select Car Model',
                        options:
                            dDCarModelAppconfigdataRecord.valuearray.toList(),
                        onChanged: (val) =>
                            setState(() => dDCarModelValue = val),
                        width: 350,
                        height: 50,
                        textStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFB20D0D),
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFFB20D0D),
                          size: 15,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      );
                    },
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
