import '/components/back_button_widget.dart';
import '/components/nav_bar_gym_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gym_events/gym_events_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for NavBarGym component.
  late NavBarGymModel navBarGymModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    navBarGymModel = createModel(context, () => NavBarGymModel());
  }

  void dispose() {
    backButtonModel.dispose();
    navBarGymModel.dispose();
  }

  /// Additional helper methods are added here.

}
