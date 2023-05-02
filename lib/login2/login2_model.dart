import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home1/home1_widget.dart';
import '/recovery_pass/recovery_pass_widget.dart';
import '/sign_up/sign_up_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Login2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Passw widget.
  TextEditingController? passwController;
  late bool passwVisibility;
  String? Function(BuildContext, String?)? passwControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwVisibility = false;
  }

  void dispose() {
    emailController?.dispose();
    passwController?.dispose();
  }

  /// Additional helper methods are added here.

}
