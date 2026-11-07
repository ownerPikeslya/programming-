import 'notification_manager.dart';
import 'sms_notification_service.dart';
import 'telegram_client.dart';
import 'email_client.dart';
import 'adapter.dart';


void main(){
 final manager = NotificationManager();
 final sms = SmsNotificationService();
 final telegram = TelegramAdapter(TelegramClient());
 final email = EmailAdapter(EmailClient(), subject: 'notif');

 manager.notify(sms, '123', 'hello');
 manager.notify(telegram, '123', 'hello');
 manager.notify(email, '123', 'hello');
}

