using Android.App;
using Android.Content;
using AndroidX.Core.App;
using Firebase.Messaging;


namespace MauiAppNotificationNew.Platforms.Android.Services
{
    [Service(Exported = true)]
    [IntentFilter(new[] { "com.google.firebase.MESSAGING_EVENT" })]
    public class FirebaseService : FirebaseMessagingService
    {
        public FirebaseService()
        {
            // Constructor for FirebaseService
        }
        public override void OnNewToken(string token)
        {
            base.OnNewToken(token);

            // Store the new device token in preferences
            if (Preferences.ContainsKey("DeviceToken"))
            {
                Preferences.Remove("DeviceToken");
            }
            Preferences.Set("DeviceToken", token);
        }

        public override void OnMessageReceived(RemoteMessage message)
        {
            base.OnMessageReceived(message);

            // Retrieve notification details from the remote message
            var notification = message.GetNotification();

            // Send notification to display
            SendNotification(notification.Body, notification.Title, message.Data);
        }

        private void SendNotification(string messageBody, string title, IDictionary<string, string> data)
        {
            // Create an intent to launch the main activity
            var intent = new Intent(this, typeof(MainActivity));
            intent.AddFlags(ActivityFlags.ClearTop);

            // Add data from the notification to the intent
            foreach (var key in data.Keys)
            {
                string value = data[key];
                intent.PutExtra(key, value);
            }

            // Create a pending intent to launch the main activity
            var pendingIntent = PendingIntent.GetActivity(this,
                MainActivity.NotificationID, intent, PendingIntentFlags.OneShot);

            // Build the notification
            var notificationBuilder = new NotificationCompat.Builder(this, MainActivity.Channel_ID)
                .SetContentTitle(title)
                .SetSmallIcon(Resource.Mipmap.appicon)
                .SetContentText(messageBody)
                .SetChannelId(MainActivity.Channel_ID)
                .SetContentIntent(pendingIntent)
                .SetPriority((int)NotificationPriority.Max);

            // Notify the notification manager to display the notification
            var notificationManager = NotificationManagerCompat.From(this);
            notificationManager.Notify(MainActivity.NotificationID, notificationBuilder.Build());
        }
    }
}