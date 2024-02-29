﻿using Android.App;
using Android.Content.PM;
using Android.OS;
using AndroidX.Core.App;
using AndroidX.Core.Content;

namespace MauiAppNotificationNew
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        internal static readonly string Channel_ID = "TestChannel"; // Channel ID for notifications
        internal static readonly int NotificationID = 101; // Notification ID

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Check if there are extras in the intent
            if (Intent.Extras != null)
            {
                // Iterate through the keys in the extras
                foreach (var key in Intent.Extras.KeySet())
                {
                    // Check if the key is same as "NavigationID"
                    if (key == "NavigationID")
                    {
                        // Get the value associated with the key
                        string idValue = Intent.Extras.GetString(key);

                        // Remove any existing NavigationID from preferences
                        if (Preferences.ContainsKey("NavigationID"))
                        {
                            Preferences.Remove("NavigationID");
                        }

                        // Set the NavigationID in preferences
                        Preferences.Set("NavigationID", idValue);
                    }
                }
            }

            // Check and request permission to post notifications if not granted
            if (ContextCompat.CheckSelfPermission(this, Android.Manifest.Permission.PostNotifications) == Permission.Denied)
            {
                ActivityCompat.RequestPermissions(this, new String[] { Android.Manifest.Permission.PostNotifications }, 1);
            }

            // Calls a method to Create the notification channel
            CreateNotificationChannel();
        }


        private void CreateNotificationChannel()
        {
            // Check if the Android version is Oreo (API 26) or higher
            if (OperatingSystem.IsOSPlatformVersionAtLeast("android", 26))
            {
                // Create a notification channel
                var channel = new NotificationChannel(Channel_ID, "Test Notfication Channel", NotificationImportance.Default);

                // Get the notification manager and create the notification channel
                var notificaitonManager = (NotificationManager)GetSystemService(Android.Content.Context.NotificationService);
                notificaitonManager.CreateNotificationChannel(channel);
            }
        }
    }
}
