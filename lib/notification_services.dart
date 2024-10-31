import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void getNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('authorized');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.notDetermined) {
      print('not determined');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('provisional');
    } else {
      print('denied');
    }
  }
}
