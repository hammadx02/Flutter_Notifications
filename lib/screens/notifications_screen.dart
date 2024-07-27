import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // get the notification message and display on the screen
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification Screen',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            message.notification!.title.toString(),
          ),
           Text(
            message.notification!.body.toString(),
          ),
           Text(
            message.data.toString(),
          ),
        ],
      ),
    );
  }
}
