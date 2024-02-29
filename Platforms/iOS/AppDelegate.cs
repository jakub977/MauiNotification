using Foundation;
using UIKit;
using UserNotifications;

namespace MauiAppNotificationNew
{
    [Register("AppDelegate")]
    public class AppDelegate : MauiUIApplicationDelegate
    {
        protected override MauiApp CreateMauiApp() => MauiProgram.CreateMauiApp();

        public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
        {
            // Check if the iOS version is 10.0 or higher
            if (UIDevice.CurrentDevice.CheckSystemVersion(10, 0))
            {
                // Specify the notification authorization options
                var authOption = UNAuthorizationOptions.Alert | UNAuthorizationOptions.Badge | UNAuthorizationOptions.Sound;

                // Request authorization for remote notifications
                UNUserNotificationCenter.Current.RequestAuthorization(authOption, (granted, error) =>
                {
                    // Handle the authorization result if needed
                });


            }
            // Register for remote notifications
            UIApplication.SharedApplication.RegisterForRemoteNotifications();

            return base.FinishedLaunching(application, launchOptions);
        }

        [Export("messaging:didReceiveRegistrationToken:")]
        public void DidReceiveRegistrationToken(string regToken)
        {
            // Store the device token in preferences when received
            if (Preferences.ContainsKey("DeviceToken"))
            {
                Preferences.Remove("DeviceToken");
            }
            Preferences.Set("DeviceToken", regToken);
        }
    }
}
