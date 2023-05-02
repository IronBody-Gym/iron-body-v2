import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/machine_description/machine_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cookie_machine_model.dart';
export 'cookie_machine_model.dart';
import '../backend/app_state.dart';

class CookieMachineWidget extends StatefulWidget {
  const CookieMachineWidget({Key? key}) : super(key: key);

  @override
  _CookieMachineWidgetState createState() => _CookieMachineWidgetState();
}

class _CookieMachineWidgetState extends State<CookieMachineWidget> {
  late CookieMachineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CookieMachineModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ApplicationState>();

    return Align(
      alignment: AlignmentDirectional(-0.9, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MachineDescriptionWidget(),
              ),
            );
          },
          child: Container(
            width: 110.0,
            height: 26.0,
            constraints: BoxConstraints(
              maxHeight: 32.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x32171717),
                  offset: Offset(0.0, 2.0),
                )
              ],
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    FFIcons.kgym,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 13.0,
                  ),
                  Text(
                    'Maquina 1',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
