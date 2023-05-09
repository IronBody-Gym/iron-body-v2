import 'package:flutter_animate/flutter_animate.dart';
import 'package:iron_body/backend/usecase/use_event.dart';
import 'package:iron_body/backend/usecase/use_trainer.dart';

import '/components/nav_bar_gym_widget.dart';
import '/event/event_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gym_events_model.dart';
import 'package:iron_body/backend/app_state.dart';
export 'gym_events_model.dart';

class GymEventsWidget extends StatefulWidget {

  const GymEventsWidget({Key? key}) : super(key: key);

  @override
  _GymEventsWidgetState createState() => _GymEventsWidgetState();
}

class _GymEventsWidgetState extends State<GymEventsWidget> {
  late bool isWeeklyView = true;
  late GymEventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GymEventsModel()); 
     

  }

  @override
  void dispose() {
    // _model.dispose();

    // _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ApplicationState>();

     Provider.of<EventRepository>(context , listen: false).getEvent();
      

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Stack(
        
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 105,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Eventos de la Semana', 
                      style: TextStyle(fontSize: 28, color: FlutterFlowTheme.of(context).primary,)
                    ),
                   SwitchCal(),
                  ],
                )
                
              
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 45.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 35.0, 15.0, 0.0),
                      child: Container(
                        
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 72),
                        padding: EdgeInsets.only(bottom: 25, right: 8, top: 10, left: 8),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0x230E151B),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primary,
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          weekFormat: this.isWeeklyView,
                          weekStartsMonday: true,
                          initialDate: getCurrentTimestamp,
                          rowHeight: 35.0,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(() {
                              final provider =
                                  Provider.of<EventRepository>(context, listen: false);
                              provider.calendarSelectedDay = newSelectedDate;
                              provider.getEvent();
                            });
                          },
                          titleStyle:
                              FlutterFlowTheme.of(context).headlineSmall.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 13.0,
                                  ),
                          dateStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 13.0,
                                  ),
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 13.0,
                                  ),
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Roboto',
                                    color: Color(0x6B57636C),
                                  ),
                          locale: FFLocalizations.of(context).languageCode,
                        
                        ),
                       
                      ),
                    ),
                   
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child:
                        Consumer<EventRepository>(builder: (context, value, child) =>ListView.builder(
                          itemCount: value.listEvent.length,
                          itemBuilder: ( _ , i) => Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x230E151B),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 12.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.solidDotCircle,
                                              color: Color(0xFF47F62C),
                                              size: 10.0,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      5.0, 4.0, 0.0, 4.0),
                                              child: 
                                              Text(
                                                
                                                value.listEvent[i].start.hour.toString().padLeft(2, '0') + ":" +
                                                value.listEvent[i].start.minute.toString().padLeft(2, '0') + "  -  "+ 
                                                value.listEvent[i].end.hour.toString().padLeft(2, '0') + ":" +
                                                value.listEvent[i].end.minute.toString().padLeft(2, '0'),     
        
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Icon(
                                                  Icons.keyboard_control,
                                                  color:
                                                      FlutterFlowTheme.of(context)
                                                          .primaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          value.listEvent[i].title,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 7.0, 0.0, 0.0),
                                        child: Text(
                                          'Gabriela Leiva',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          )
                        ) )
                         ,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.01),
                child: wrapWithModel(
                  model: _model.navBarGymModel,
                  updateCallback: () => setState(() {}),
                  child: NavBarGymWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Row SwitchCal() {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Vista Semanal', style: FlutterFlowTheme.of(context)
                                              .labelMedium),
                      Switch(
                        activeColor: Color.fromRGBO(71, 246, 44, 1),
                        inactiveTrackColor: Color.fromRGBO(71, 246, 44, 0.3),
                        value: isWeeklyView,
                        onChanged: (value) {
                          setState(() {
                            isWeeklyView = value;
                          });
                        },
                      ),
                      Text('Vista Mensual', style: FlutterFlowTheme.of(context)
                                              .labelMedium),
                    ],
                  );
  }
}
