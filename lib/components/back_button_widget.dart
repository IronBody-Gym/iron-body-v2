import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home1/home1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'back_button_model.dart';
export 'back_button_model.dart';
import '../backend/app_state.dart';

class BackButtonWidget extends StatefulWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  _BackButtonWidgetState createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  late BackButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ApplicationState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
      child: FlutterFlowIconButton(
        borderRadius: 30.0,
        buttonSize: 32.0,
        fillColor: FlutterFlowTheme.of(context).primaryBackground,
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 14.0,
        ),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home1Widget(),
            ),
          );
        },
      ),
    );
  }
}
