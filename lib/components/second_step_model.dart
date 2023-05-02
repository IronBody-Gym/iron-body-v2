import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class SecondStepModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for genderLIst widget.
  String? genderLIstValue;
  FormFieldController<String>? genderLIstValueController;
  // State field(s) for phonePer widget.
  TextEditingController? phonePerController;
  final phonePerMask = MaskTextInputFormatter(mask: '(###) ###-##-##');
  String? Function(BuildContext, String?)? phonePerControllerValidator;
  // State field(s) for idCard widget.
  TextEditingController? idCardController;
  String? Function(BuildContext, String?)? idCardControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    phonePerController?.dispose();
    idCardController?.dispose();
  }

  /// Additional helper methods are added here.

}
