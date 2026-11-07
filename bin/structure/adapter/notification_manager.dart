import 'notification_service.dart';

class NotificationManager {
  void notify(NotificationService service, String recipient, String message) {
    service.send(recipient, message);
  }
  
}