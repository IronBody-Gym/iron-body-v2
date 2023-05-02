import '/components/nav_bar_gym_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sing_in/sing_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatetrainerModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> gender = [];
  void addToGender(String item) => gender.add(item);
  void removeFromGender(String item) => gender.remove(item);
  void removeAtIndexFromGender(int index) => gender.removeAt(index);

  String celphone = '1';

  int idced = 1;

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
