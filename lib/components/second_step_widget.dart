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
import 'second_step_model.dart';
export 'second_step_model.dart';
import '../backend/app_state.dart';


class SecondStepWidget extends StatefulWidget {
  const SecondStepWidget({Key? key}) : super(key: key);

  @override
  _SecondStepWidgetState createState() => _SecondStepWidgetState();
}

class _SecondStepWidgetState extends State<SecondStepWidget> {
  late SecondStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondStepModel());

    _model.phonePerController ??= TextEditingController();
    _model.idCardController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ApplicationState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
      child: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FlutterFlowDropDown<String>(
                controller: _model.genderLIstValueController ??=
                    FormFieldController<String>(null),
                options: ['Masculino', 'Femenino', 'Otro'],
                optionLabels: ['Masculino', 'Femenino', 'Otro'],
                onChanged: (val) async {
                  setState(() => _model.genderLIstValue = val);
                  setState(() {
                    ApplicationState().gender1 = _model.genderLIstValue!;
                  });
                },
                width: double.infinity,
                height: 50.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                hintText: 'Seleccione Sexo',
                searchHintText: 'Search for an item...',
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: Colors.transparent,
                borderWidth: 0.0,
                borderRadius: 10.0,
                margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                hidesUnderline: true,
                isSearchable: false,
              ),
              TextFormField(
                controller: _model.phonePerController,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.phonePerController',
                  Duration(milliseconds: 2000),
                  () async {
                    setState(() {
                      ApplicationState().phoneNum1 = _model.phonePerController.text;
                    });
                  },
                ),
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Celular',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Roboto',
                        fontSize: 17.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).accent3,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                keyboardType: TextInputType.phone,
                validator:
                    _model.phonePerControllerValidator.asValidator(context),
                inputFormatters: [_model.phonePerMask],
              ),
              TextFormField(
                controller: _model.idCardController,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.idCardController',
                  Duration(milliseconds: 2000),
                  () async {
                    setState(() {
                      ApplicationState().idNum1 =
                          int.parse(_model.idCardController.text);
                    });
                  },
                ),
                textCapitalization: TextCapitalization.none,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Cédula',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Roboto',
                        fontSize: 17.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).accent3,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                keyboardType: TextInputType.number,
                validator:
                    _model.idCardControllerValidator.asValidator(context),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
