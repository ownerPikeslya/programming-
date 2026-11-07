import "notification_service.dart";

class SmsNotificationService implements NotificationService {
  @override
  void send (String recipient, String message) {
    print("sms $recipient, $message");
  }
}