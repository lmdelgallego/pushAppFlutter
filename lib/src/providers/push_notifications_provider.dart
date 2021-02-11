import 'package:firebase_messaging/firebase_messaging.dart';

// eGybWW39TaK2JieH6jhjOw:APA91bEMLfmrtvWuHJytxRTYts2-almeC995Jvo1Ep1aLcjOA6tTxOhVf524A1dI8_wuoBsD83rIty3jq0RzwUmxljrTRj_3aV9WYoI_XJFbK9dH_VwbmalNxIy_wYmaIcBDE8ZP7Zxu
class PushNotificationsProvider {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  static Future<dynamic> onBackgroundMessageHandler(
      Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }

    // Or do other work.
  }

  Future<dynamic> onMessage(Map<String, dynamic> message) async {
    print("==== onMessage ====");
    print("message: $message");
  }

  Future<dynamic> onLaunch(Map<String, dynamic> message) async {
    print("==== onLaunch ====");
    print("message: $message");
  }

  Future<dynamic> onResume(Map<String, dynamic> message) async {
    print("==== onResume ====");
    print("message: $message");
  }

  initNotifications() async {
    await _firebaseMessaging.requestNotificationPermissions();
    final token = await _firebaseMessaging.getToken();

    print("==== FCM TOKEN ====");
    print(token);

    _firebaseMessaging.configure(
      onMessage: onMessage,
      onBackgroundMessage: onBackgroundMessageHandler,
      onLaunch: onLaunch,
      onResume: onResume,
    );
  }
}
