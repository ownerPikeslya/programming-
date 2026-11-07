import 'notification_service.dart';
import 'telegram_client.dart';
import 'email_client.dart';

class TelegramAdapter implements NotificationService {
  final TelegramClient _client;
  TelegramAdapter(this._client);

  @override
  void send(String recipient, String message) {
    _client.sendTelegramMessage(recipient, message);
  }
}

class EmailAdapter implements NotificationService {
  final EmailClient _client;
  final String _subject;

  EmailAdapter(this._client, {String subject = 'notif'})
      : _subject = subject;

  @override
  void send(String recipient, String message) {
    _client.sendEmail(recipient, _subject, message);
  }
}