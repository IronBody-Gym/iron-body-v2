import '/components/third_step_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageStep3Model extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? nombres2;

  ///  State fields for stateful widgets in this page.

  // Model for thirdStep component.
  late ThirdStepModel thirdStepModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    thirdStepModel = createModel(context, () => ThirdStepModel());
  }

  void dispose() {
    thirdStepModel.dispose();
  }

  /// Additional helper methods are added here.

}
