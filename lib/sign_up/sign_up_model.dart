import '/components/first_step_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login2/login2_widget.dart';
import '/page_step2/page_step2_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for firstStep component.
  late FirstStepModel firstStepModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstStepModel = createModel(context, () => FirstStepModel());
  }

  void dispose() {
    firstStepModel.dispose();
  }

  /// Additional helper methods are added here.

}
