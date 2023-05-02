import '/components/cookie_machine_widget.dart';
import '/daily_workout/daily_workout_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home1/home1_widget.dart';
import '/machine_description/machine_description_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WorkoutPageViewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel1;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel2;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel3;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel4;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel5;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel6;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel7;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel8;
  // Model for CookieMachine component.
  late CookieMachineModel cookieMachineModel9;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cookieMachineModel1 = createModel(context, () => CookieMachineModel());
    cookieMachineModel2 = createModel(context, () => CookieMachineModel());
    cookieMachineModel3 = createModel(context, () => CookieMachineModel());
    cookieMachineModel4 = createModel(context, () => CookieMachineModel());
    cookieMachineModel5 = createModel(context, () => CookieMachineModel());
    cookieMachineModel6 = createModel(context, () => CookieMachineModel());
    cookieMachineModel7 = createModel(context, () => CookieMachineModel());
    cookieMachineModel8 = createModel(context, () => CookieMachineModel());
    cookieMachineModel9 = createModel(context, () => CookieMachineModel());
  }

  void dispose() {
    cookieMachineModel1.dispose();
    cookieMachineModel2.dispose();
    cookieMachineModel3.dispose();
    cookieMachineModel4.dispose();
    cookieMachineModel5.dispose();
    cookieMachineModel6.dispose();
    cookieMachineModel7.dispose();
    cookieMachineModel8.dispose();
    cookieMachineModel9.dispose();
  }

  /// Additional helper methods are added here.

}
