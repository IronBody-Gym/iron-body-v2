import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// SHA1: 68:10:F4:B7:92:C8:A2:3F:37:E1:DE:CB:BB:3B:CB:D3:9A:65:D4:50

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future _backgroundHandler( RemoteMessage message ) async {
    print( 'onBackground Handler ${ message.messageId}');
  }

  static Future _onMessageHandler( RemoteMessage message ) async {
    print( 'onMessage Handler ${ message.messageId}');
  }

  static Future _onMessageOpenApp( RemoteMessage message ) async {
    print( 'onMessageOpenApp Handler ${ message.messageId}');
  }


  static Future initializeApp() async {
    // Push Notifications
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token: $token');   

    // Handlers
    FirebaseMessaging.onBackgroundMessage (_backgroundHandler); 
    FirebaseMessaging.onMessage.listen (_onMessageHandler); 
    FirebaseMessaging.onMessageOpenedApp.listen (_onMessageOpenApp); 

    // Local Notifications


  }
}