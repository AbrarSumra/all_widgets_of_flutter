import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  var mNotificationManager = FlutterLocalNotificationsPlugin();

  void initialize() {
    var initialNoti = InitializationSettings(
      android: AndroidInitializationSettings("chat"),
      iOS: DarwinInitializationSettings(),
      macOS: DarwinInitializationSettings(),
    );

    mNotificationManager.initialize(initialNoti);
    mNotificationManager
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();
  }

  sendNotification(
      {required int id, required String title, required String body}) {
    var notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails("Test", "Test Channel"),
      iOS: DarwinNotificationDetails(),
      macOS: DarwinNotificationDetails(),
    );

    mNotificationManager.show(
      id,
      title,
      body,
      notificationDetails,
    );
  }
}
