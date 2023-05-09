import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:iron_body/backend/firebase_options.dart';


Future initFirebase() async {

        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform
        );
    
}