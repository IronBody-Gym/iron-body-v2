import '/components/nav_bar_gym_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavbarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarGym component.
  late NavBarGymModel navBarGymModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarGymModel = createModel(context, () => NavBarGymModel());
  }

  void dispose() {
    navBarGymModel.dispose();
  }

  /// Additional helper methods are added here.

}
