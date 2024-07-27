import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
// create an instance of firebase messaging
final _firebaseMessaging = FirebaseMessaging.instance;

// function to initialize notifications
Future<void> initNotifications() async {
  // request permissions from the user (promt the user)
  await _firebaseMessaging.requestPermission();

  // fetch the FCM token for this device
  final FCMToken = _firebaseMessaging.getToken();

  // print the token (normally you will send this to your server)

}

// function to handle recieved messages

// function to initialized foreground and background settings


}