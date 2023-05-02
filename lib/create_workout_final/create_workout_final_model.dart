import '/components/back_button_widget.dart';
import '/components/nav_bar_gym_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/listade_ejercicios/listade_ejercicios_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateWorkoutFinalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey9 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for TextField widget.
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for TextField widget.
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for TextField widget.
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for TextField widget.
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue9;
  FormFieldController<String>? dropDownValueController9;
  // State field(s) for TextField widget.
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue10;
  FormFieldController<String>? dropDownValueController10;
  // State field(s) for TextField widget.
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController24;
  String? Function(BuildContext, String?)? textController24Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController25;
  String? Function(BuildContext, String?)? textController25Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue11;
  FormFieldController<String>? dropDownValueController11;
  // State field(s) for TextField widget.
  TextEditingController? textController26;
  String? Function(BuildContext, String?)? textController26Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue12;
  FormFieldController<String>? dropDownValueController12;
  // State field(s) for TextField widget.
  TextEditingController? textController27;
  String? Function(BuildContext, String?)? textController27Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController28;
  String? Function(BuildContext, String?)? textController28Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController29;
  String? Function(BuildContext, String?)? textController29Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController30;
  String? Function(BuildContext, String?)? textController30Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue13;
  FormFieldController<String>? dropDownValueController13;
  // State field(s) for TextField widget.
  TextEditingController? textController31;
  String? Function(BuildContext, String?)? textController31Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue14;
  FormFieldController<String>? dropDownValueController14;
  // State field(s) for TextField widget.
  TextEditingController? textController32;
  String? Function(BuildContext, String?)? textController32Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController33;
  String? Function(BuildContext, String?)? textController33Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController34;
  String? Function(BuildContext, String?)? textController34Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController35;
  String? Function(BuildContext, String?)? textController35Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue15;
  FormFieldController<String>? dropDownValueController15;
  // State field(s) for TextField widget.
  TextEditingController? textController36;
  String? Function(BuildContext, String?)? textController36Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue16;
  FormFieldController<String>? dropDownValueController16;
  // State field(s) for TextField widget.
  TextEditingController? textController37;
  String? Function(BuildContext, String?)? textController37Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController38;
  String? Function(BuildContext, String?)? textController38Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController39;
  String? Function(BuildContext, String?)? textController39Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController40;
  String? Function(BuildContext, String?)? textController40Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue17;
  FormFieldController<String>? dropDownValueController17;
  // State field(s) for TextField widget.
  TextEditingController? textController41;
  String? Function(BuildContext, String?)? textController41Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue18;
  FormFieldController<String>? dropDownValueController18;
  // State field(s) for TextField widget.
  TextEditingController? textController42;
  String? Function(BuildContext, String?)? textController42Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController43;
  String? Function(BuildContext, String?)? textController43Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController44;
  String? Function(BuildContext, String?)? textController44Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController45;
  String? Function(BuildContext, String?)? textController45Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue19;
  FormFieldController<String>? dropDownValueController19;
  // State field(s) for TextField widget.
  TextEditingController? textController46;
  String? Function(BuildContext, String?)? textController46Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue20;
  FormFieldController<String>? dropDownValueController20;
  // State field(s) for TextField widget.
  TextEditingController? textController47;
  String? Function(BuildContext, String?)? textController47Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController48;
  String? Function(BuildContext, String?)? textController48Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController49;
  String? Function(BuildContext, String?)? textController49Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController50;
  String? Function(BuildContext, String?)? textController50Validator;
  // Model for NavBarGym component.
  late NavBarGymModel navBarGymModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    navBarGymModel = createModel(context, () => NavBarGymModel());
  }

  void dispose() {
    backButtonModel.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    textController7?.dispose();
    textController8?.dispose();
    textController9?.dispose();
    textController10?.dispose();
    textController11?.dispose();
    textController12?.dispose();
    textController13?.dispose();
    textController14?.dispose();
    textController15?.dispose();
    textController16?.dispose();
    textController17?.dispose();
    textController18?.dispose();
    textController19?.dispose();
    textController20?.dispose();
    textController21?.dispose();
    textController22?.dispose();
    textController23?.dispose();
    textController24?.dispose();
    textController25?.dispose();
    textController26?.dispose();
    textController27?.dispose();
    textController28?.dispose();
    textController29?.dispose();
    textController30?.dispose();
    textController31?.dispose();
    textController32?.dispose();
    textController33?.dispose();
    textController34?.dispose();
    textController35?.dispose();
    textController36?.dispose();
    textController37?.dispose();
    textController38?.dispose();
    textController39?.dispose();
    textController40?.dispose();
    textController41?.dispose();
    textController42?.dispose();
    textController43?.dispose();
    textController44?.dispose();
    textController45?.dispose();
    textController46?.dispose();
    textController47?.dispose();
    textController48?.dispose();
    textController49?.dispose();
    textController50?.dispose();
    navBarGymModel.dispose();
  }

  /// Additional helper methods are added here.

}
