import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home1/home1_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThirdStepModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for passW1 widget.
  TextEditingController? passW1Controller;
  late bool passW1Visibility;
  String? Function(BuildContext, String?)? passW1ControllerValidator;
  // State field(s) for passW2 widget.
  TextEditingController? passW2Controller;
  late bool passW2Visibility;
  String? Function(BuildContext, String?)? passW2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passW1Visibility = false;
    passW2Visibility = false;
  }

  void dispose() {
    emailController?.dispose();
    passW1Controller?.dispose();
    passW2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
