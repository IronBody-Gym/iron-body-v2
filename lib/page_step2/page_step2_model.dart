import '/components/second_step_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/page_step3/page_step3_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageStep2Model extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> gender = [];
  void addToGender(String item) => gender.add(item);
  void removeFromGender(String item) => gender.remove(item);
  void removeAtIndexFromGender(int index) => gender.removeAt(index);

  String celphone = '1';

  int idced = 1;

  ///  State fields for stateful widgets in this page.

  // Model for secondStep component.
  late SecondStepModel secondStepModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    secondStepModel = createModel(context, () => SecondStepModel());
  }

  void dispose() {
    secondStepModel.dispose();
  }

  /// Additional helper methods are added here.

}
