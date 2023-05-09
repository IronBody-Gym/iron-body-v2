import 'package:iron_body/backend/entity/event.dart';

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

class GymEventsModel extends FlutterFlowModel {


  late NavBarGymModel navBarGymModel;
  void initState(BuildContext context) {

    navBarGymModel = createModel(context, () => NavBarGymModel());
  }

  void dispose() {
    navBarGymModel.dispose();
  }

}
