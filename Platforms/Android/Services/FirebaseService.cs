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

        /// <summary>
        /// Method called on new token, when the app is opened
        /// </summary>
        /// <param name="token"></param>
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

        /// <summary>
        /// Method called on message recieved which retrieves the notification
        /// </summary>
        /// <param name="message"></param>
        public override void OnMessageReceived(RemoteMessage message)
        {
            base.OnMessageReceived(message);

            // Retrieve notification details from the remote message
            var notification = message.GetNotification();

            // Send notification to display
            SendNotification(notification.Body, notification.Title, message.Data);
        }

        /// <summary>
        /// Method to send notification
        /// </summary>
        /// <param name="messageBody"></param>
        /// <param name="title"></param>
        /// <param name="data"></param>
        private void SendNotification(string messageBody, string title, IDictionary<string, string> data)
        {
            // Create an intent to launch the main activity
            var intent = new Intent(this, typeof(MainActivity));
            intent.AddFlags(ActivityFlags.ClearTop);
            intent.AddFlags(ActivityFlags.SingleTop); // Make sure the app does not open new activity when clicked on Notification and so the app just redirects to the page the Notification leads to.

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
                .SetPriority((int)NotificationPriority.Max)
                .SetAutoCancel(true);

            // Notify the notification manager to display the notification
            var notificationManager = NotificationManagerCompat.From(this);
            notificationManager.Notify(MainActivity.NotificationID, notificationBuilder.Build());
        }
    }
}