import 'package:flutter/material.dart';

// A simple ChangeNotifier for notification state
class NotificationNotifier extends ChangeNotifier {
  int _notificationCount = 0;

  int get notificationCount => _notificationCount;

  void increment() {
    _notificationCount++;
    notifyListeners();
  }

  void clear() {
    _notificationCount = 0;
    notifyListeners();
  }
}
