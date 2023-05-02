import '/components/back_button_widget.dart';
import '/components/nav_bar_gym_widget.dart';
import '/daily_workout/daily_workout_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/instructors/instructors_widget.dart';
import '/login2/login2_widget.dart';
import '/perfil/perfil_widget.dart';
import '/recovery_pass/recovery_pass_widget.dart';
import '/story_workout/story_workout_widget.dart';
import '/workout_categories/workout_categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeTrainerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarGym component.
  late NavBarGymModel navBarGymModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarGymModel = createModel(context, () => NavBarGymModel());
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  void dispose() {
    navBarGymModel.dispose();
    backButtonModel.dispose();
  }

  /// Additional helper methods are added here.

}
