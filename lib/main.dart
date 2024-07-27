import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notifications/api/firebase_api.dart';
import 'package:flutter_notifications/screens/home_screen.dart';
import 'package:flutter_notifications/screens/notifications_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBg96Xwy5GwjHcmCdtnKAHZnPhbBf-yLSQ',
      appId: '1:64268624565:android:fd141fdc9451c46cb4d4fc',
      messagingSenderId: '64268624565',
      projectId: 'push-notifications-a76c4',
    ),
  );
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Notifications',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen': (context) => const NotificationsScreen(),
      },
    );
  }
}
