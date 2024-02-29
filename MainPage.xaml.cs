using MauiAppNotificationNew.Components.Pages;
using MauiAppNotificationNew.Models;
using Microsoft.AspNetCore.Components;
using Newtonsoft.Json;
using System.Text;


namespace MauiAppNotificationNew
{
    public partial class MainPage : ContentPage
    {
        //[Inject]
        //private NavigationManager? _navigation { get; set; }

        private string? _deviceToken;

        public MainPage()
        {
            InitializeComponent();

            if (Preferences.ContainsKey("DeviceToken"))
            {
                _deviceToken = Preferences.Get("DeviceToken", ""); // Retrieve the device token from preferences
            }

            //if (Preferences.ContainsKey("NavigationID"))
            //{
            //    string id = Preferences.Get("NavigationID", "");
            //    if (id == "1")
            //    {
            //        _navigation?.NavigateTo("/counter");
            //    }
            //    else if (id == "2")
            //    {
            //        _navigation?.NavigateTo("/counter");
            //    }
            //    else if (id == "3")
            //    {
            //        _navigation?.NavigateTo("/weather");
            //    }
            //    Preferences.Remove("id");
            //}
        }

        public async void OnCounterClicked()
        {
            // Handle the counter button click event
            var androidNotificationObject = new Dictionary<string, string>();
            androidNotificationObject.Add("NavigationID", "1"); // Navigation ID to decide which page will be navigated upon Notification clicking.

            // Create a push notification request
            var pushNotificationRequest = new PushNotificationRequest
            {
                notification = new NotificationMessageBody
                {
                    title = "New Notification",
                    body = "Click me"
                },
                data = androidNotificationObject,
                registration_ids = new List<string> { _deviceToken }
            };

            // URL for sending push notification
            string url = "https://fcm.googleapis.com/fcm/send";

            // Send push notification using HttpClient
            using (var client = new HttpClient())
            {
                client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("key", "=" + "");

                // Serialize the push notification request
                string serializeRequest = JsonConvert.SerializeObject(pushNotificationRequest);

                // Send the push notification request to the FCM server
                var response = await client.PostAsync(url, new StringContent(serializeRequest, Encoding.UTF8, "application/json"));

                // Check if the push notification was sent successfully
                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    // Display an alert indicating that the notification was sent
                    await App.Current.MainPage.DisplayAlert("Notification sent", "notification sent", "OK");
                }
            }
        }
    }
}
