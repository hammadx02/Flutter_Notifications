import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_notifications/main.dart';

class FirebaseApi {
// create an instance of firebase messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

// function to initialize notifications
  Future<void> initNotifications() async {
    // request permissions from the user (promt the user)
    await _firebaseMessaging.requestPermission();

    // fetch the FCM token for this device
    final fCMToken = _firebaseMessaging.getToken();

    // print the token (normally you will send this to your server)
    print('Token: $fCMToken');
  }

// function to handle recieved messages
  void handleMessage(RemoteMessage? message) {
    // if the message is null, do noting
    if (message == null) return;

    // navigate to the new screen when message is recieved and user taps the notification
    navigatorKey.currentState?.pushNamed(
      '/notification_screen',
      arguments: message,
    );
  }

// function to initialized foreground and background settings
}
