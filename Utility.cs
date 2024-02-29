using System.Diagnostics;

namespace MauiAppNotificationNew.Platforms.Android.Services
{
    public static class Utility
    {
        public static void CallNotificationMethod()
        {
            var mainpage = Application.Current.MainPage as MainPage;
            mainpage?.OnCounterClicked();
        }
    }
}
