using CommunityToolkit.Mvvm.Messaging.Messages;

namespace MauiAppNotificationNew.Models
{
    public class PushNotificationReceived : ValueChangedMessage<string>
    {
        public PushNotificationReceived(string message) : base(message) { }
    }
}