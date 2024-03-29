import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/trainer_detail/trainer_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WriteReviewModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> gender = [];
  void addToGender(String item) => gender.add(item);
  void removeFromGender(String item) => gender.remove(item);
  void removeAtIndexFromGender(int index) => gender.removeAt(index);

  String celphone = '1';

  int idced = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
