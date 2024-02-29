; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [354 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [702 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 250
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 301
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 316
	i32 39109920, ; 7: Newtonsoft.Json.dll => 0x254c520 => 206
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 325
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 57305218, ; 11: Xamarin.KotlinX.Coroutines.Play.Services => 0x36a6882 => 315
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 349
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 15: Microsoft.Maui.Graphics.dll => 0x44bb714 => 205
	i32 82292897, ; 16: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 17: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 333
	i32 101534019, ; 18: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 268
	i32 103834273, ; 19: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 280
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 21: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 268
	i32 122350210, ; 22: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 23: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 311
	i32 136584136, ; 24: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 348
	i32 140062828, ; 25: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 341
	i32 142721839, ; 26: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 27: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 28: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 29: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 223
	i32 176265551, ; 30: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 31: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 270
	i32 184328833, ; 32: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 33: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 34: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 221
	i32 220171995, ; 35: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 36: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 244
	i32 230752869, ; 37: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 38: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 39: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 40: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 41: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 176
	i32 261689757, ; 42: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 227
	i32 276479776, ; 43: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 246
	i32 280482487, ; 45: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 243
	i32 291076382, ; 46: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 48: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 346
	i32 318968648, ; 49: Xamarin.AndroidX.Activity.dll => 0x13031348 => 212
	i32 321597661, ; 50: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 51: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 324
	i32 342366114, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 245
	i32 360082299, ; 53: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 350
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 62: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 344
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 228
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 65: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 241
	i32 451504562, ; 66: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 67: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 68: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 69: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 70: System.dll => 0x1bff388e => 164
	i32 476646585, ; 71: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 243
	i32 485140951, ; 72: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 295
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 256
	i32 489220957, ; 74: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 322
	i32 495452658, ; 75: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 295
	i32 498788369, ; 76: System.ObjectModel => 0x1dbae811 => 84
	i32 507148113, ; 77: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 293
	i32 513247710, ; 78: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 198
	i32 526420162, ; 79: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 311
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 82: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 343
	i32 539058512, ; 83: Microsoft.Extensions.Logging => 0x20216150 => 194
	i32 540030774, ; 84: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 542030372, ; 85: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 305
	i32 545304856, ; 86: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 87: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 88: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 89: Jsr305Binding => 0x213954e7 => 297
	i32 569601784, ; 90: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 279
	i32 571435654, ; 91: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 191
	i32 577335427, ; 92: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 93: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 94: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 95: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 96: Xamarin.AndroidX.CustomView => 0x2568904f => 233
	i32 627931235, ; 97: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 335
	i32 639843206, ; 98: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 239
	i32 643868501, ; 99: System.Net => 0x2660a755 => 81
	i32 662205335, ; 100: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 101: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 275
	i32 666292255, ; 102: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 219
	i32 672442732, ; 103: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 104: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 105: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 106: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 313
	i32 693804605, ; 107: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 108: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 109: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 308
	i32 700358131, ; 110: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 111: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 312
	i32 722857257, ; 112: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 113: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 114: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 115: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 209
	i32 759454413, ; 116: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 117: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 118: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 119: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 341
	i32 789151979, ; 120: Microsoft.Extensions.Options => 0x2f0980eb => 197
	i32 790371945, ; 121: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 234
	i32 804008546, ; 122: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 180
	i32 804715423, ; 123: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 248
	i32 823281589, ; 125: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 261
	i32 846667644, ; 130: Xamarin.Firebase.Installations.dll => 0x32771f7c => 289
	i32 869139383, ; 131: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 326
	i32 873119928, ; 132: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 133: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 134: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 135: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 340
	i32 882434999, ; 136: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 290
	i32 904024072, ; 137: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 138: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 139: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 337
	i32 928116545, ; 140: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 301
	i32 952186615, ; 141: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 142: Newtonsoft.Json => 0x38f24a24 => 206
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 312
	i32 961460050, ; 144: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 330
	i32 966729478, ; 145: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 298
	i32 967690846, ; 146: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 245
	i32 975236339, ; 147: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 148: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 149: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 150: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 151: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 339
	i32 992768348, ; 152: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 153: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 996733531, ; 154: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 294
	i32 999186168, ; 155: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 193
	i32 1001831731, ; 156: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 157: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 265
	i32 1019214401, ; 158: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 159: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1031528504, ; 160: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 300
	i32 1035644815, ; 161: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 217
	i32 1036359102, ; 162: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 304
	i32 1036536393, ; 163: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 164: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 320
	i32 1044663988, ; 165: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 166: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 252
	i32 1067306892, ; 167: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 168: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 169: Xamarin.Kotlin.StdLib => 0x409e66d8 => 309
	i32 1098259244, ; 170: System => 0x41761b2c => 164
	i32 1106973742, ; 171: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 185
	i32 1108272742, ; 172: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 342
	i32 1117529484, ; 173: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 336
	i32 1118262833, ; 174: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 332
	i32 1121599056, ; 175: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 251
	i32 1127624469, ; 176: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 196
	i32 1141947663, ; 177: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 291
	i32 1149092582, ; 178: Xamarin.AndroidX.Window => 0x447dc2e6 => 278
	i32 1168523401, ; 179: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 338
	i32 1170634674, ; 180: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 181: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 189
	i32 1175144683, ; 182: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 274
	i32 1178241025, ; 183: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 259
	i32 1204270330, ; 184: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 219
	i32 1208641965, ; 185: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 186: CommunityToolkit.Mvvm => 0x4868cc7b => 173
	i32 1219128291, ; 187: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 188: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 279
	i32 1246548578, ; 189: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 224
	i32 1253011324, ; 190: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 191: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 318
	i32 1264511973, ; 192: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 269
	i32 1267360935, ; 193: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 273
	i32 1273260888, ; 194: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 225
	i32 1275534314, ; 195: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 313
	i32 1278448581, ; 196: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 216
	i32 1293217323, ; 197: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 236
	i32 1308624726, ; 198: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 327
	i32 1309188875, ; 199: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 200: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 278
	i32 1324164729, ; 201: System.Linq => 0x4eed2679 => 61
	i32 1333047053, ; 202: Xamarin.Firebase.Common => 0x4f74af0d => 281
	i32 1335329327, ; 203: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 204: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 347
	i32 1364015309, ; 205: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 206: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 348
	i32 1376866003, ; 207: Xamarin.AndroidX.SavedState => 0x52114ed3 => 265
	i32 1379779777, ; 208: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1379897097, ; 209: Xamarin.JavaX.Inject => 0x523f8f09 => 307
	i32 1402170036, ; 210: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 211: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 229
	i32 1408764838, ; 212: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 213: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 214: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 215: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 316
	i32 1434145427, ; 216: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 217: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 298
	i32 1439761251, ; 218: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 219: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 220: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 221: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 190
	i32 1457743152, ; 222: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 223: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 224: es\Microsoft.Maui.Controls.resources => 0x57152abe => 322
	i32 1461234159, ; 225: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 226: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 227: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 228: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 218
	i32 1470490898, ; 229: Microsoft.Extensions.Primitives => 0x57a5e912 => 198
	i32 1479771757, ; 230: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 231: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 232: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 233: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 266
	i32 1521091094, ; 234: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 193
	i32 1526286932, ; 235: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 346
	i32 1531040989, ; 236: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 288
	i32 1536373174, ; 237: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 238: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 239: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 240: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 180
	i32 1550322496, ; 241: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 242: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 243: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 244: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 245: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 246: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 235
	i32 1592978981, ; 247: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 248: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 300
	i32 1601112923, ; 249: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 250: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 251: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 252: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 255
	i32 1622358360, ; 253: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 254: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 277
	i32 1632842087, ; 255: Microsoft.Extensions.Configuration.Json => 0x61533167 => 186
	i32 1635184631, ; 256: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 239
	i32 1636350590, ; 257: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 232
	i32 1639515021, ; 258: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 259: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 260: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 261: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 179
	i32 1657153582, ; 262: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 263: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 271
	i32 1658251792, ; 264: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 296
	i32 1670060433, ; 265: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 227
	i32 1675553242, ; 266: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 267: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 268: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 269: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 270: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 271: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 272: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 310
	i32 1701541528, ; 273: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 274: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 248
	i32 1726116996, ; 275: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 276: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 277: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 222
	i32 1743415430, ; 278: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 317
	i32 1744735666, ; 279: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 280: System.IO.Pipelines.dll => 0x68139a0d => 207
	i32 1746316138, ; 281: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 282: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 283: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 284: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 178
	i32 1763938596, ; 285: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 286: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 287: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 270
	i32 1770582343, ; 288: Microsoft.Extensions.Logging.dll => 0x6988f147 => 194
	i32 1776026572, ; 289: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 290: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 291: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 292: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 333
	i32 1788241197, ; 293: Xamarin.AndroidX.Fragment => 0x6a96652d => 241
	i32 1793755602, ; 294: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 325
	i32 1808609942, ; 295: Xamarin.AndroidX.Loader => 0x6bcd3296 => 255
	i32 1813058853, ; 296: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 309
	i32 1813201214, ; 297: Xamarin.Google.Android.Material => 0x6c13413e => 296
	i32 1818569960, ; 298: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 260
	i32 1818787751, ; 299: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 300: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 301: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 302: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 195
	i32 1847515442, ; 303: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 209
	i32 1853025655, ; 304: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 342
	i32 1858542181, ; 305: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 306: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 307: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 324
	i32 1876173635, ; 308: Xamarin.Firebase.Encoders.Proto => 0x6fd42343 => 287
	i32 1879696579, ; 309: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 310: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 220
	i32 1888955245, ; 311: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 312: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 313: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 318
	i32 1898237753, ; 314: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 315: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 316: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 303
	i32 1910275211, ; 317: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1933215285, ; 318: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 292
	i32 1939592360, ; 319: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 320: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 329
	i32 1956758971, ; 321: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 322: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 267
	i32 1968388702, ; 323: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1983156543, ; 324: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 310
	i32 1985761444, ; 325: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 211
	i32 2003115576, ; 326: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 321
	i32 2011961780, ; 327: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 328: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 252
	i32 2031763787, ; 329: Xamarin.Android.Glide => 0x791a414b => 208
	i32 2045470958, ; 330: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 331: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 184
	i32 2055257422, ; 332: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 247
	i32 2060060697, ; 333: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 334: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 320
	i32 2070888862, ; 335: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 336: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 192
	i32 2079903147, ; 337: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 338: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2124230737, ; 339: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 294
	i32 2127167465, ; 340: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 341: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 302
	i32 2142473426, ; 342: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 343: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 344: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 345: Microsoft.Maui => 0x80bd55ad => 203
	i32 2169148018, ; 346: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 328
	i32 2174878672, ; 347: Xamarin.Firebase.Annotations => 0x81a203d0 => 280
	i32 2181898931, ; 348: Microsoft.Extensions.Options.dll => 0x820d22b3 => 197
	i32 2192057212, ; 349: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 195
	i32 2193016926, ; 350: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 351: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 314
	i32 2201231467, ; 352: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 353: it\Microsoft.Maui.Controls.resources => 0x839595db => 330
	i32 2217644978, ; 354: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 274
	i32 2222056684, ; 355: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2225853105, ; 356: Xamarin.Firebase.Common.Ktx => 0x84abd2b1 => 282
	i32 2244775296, ; 357: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 256
	i32 2252106437, ; 358: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 359: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 360: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 361: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 362: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 210
	i32 2279755925, ; 363: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 263
	i32 2293034957, ; 364: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 365: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 366: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 367: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 334
	i32 2305521784, ; 368: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 369: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 214
	i32 2320631194, ; 370: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2335376866, ; 371: MauiAppNotificationNew.dll => 0x8b3305e2 => 0
	i32 2340441535, ; 372: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 373: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 374: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 375: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 328
	i32 2368005991, ; 376: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 377: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 378: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 379: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 380: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 329
	i32 2401565422, ; 381: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 382: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 238
	i32 2411328690, ; 383: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 176
	i32 2421380589, ; 384: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 385: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 225
	i32 2427813419, ; 386: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 326
	i32 2435356389, ; 387: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 388: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 389: Microsoft.JSInterop.dll => 0x919672ca => 199
	i32 2454642406, ; 390: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 391: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 392: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 393: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 228
	i32 2471841756, ; 394: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 395: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 396: Microsoft.Maui.Controls => 0x93dba8a1 => 201
	i32 2483661569, ; 397: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 291
	i32 2483742551, ; 398: Xamarin.Firebase.Messaging => 0x940ae757 => 292
	i32 2483903535, ; 399: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 400: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486410006, ; 401: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 304
	i32 2490993605, ; 402: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 403: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 404: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 332
	i32 2505896520, ; 405: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 250
	i32 2522472828, ; 406: Xamarin.Android.Glide.dll => 0x9659e17c => 208
	i32 2537015816, ; 407: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 175
	i32 2538310050, ; 408: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 409: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 327
	i32 2562349572, ; 410: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 411: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 412: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 331
	i32 2581783588, ; 413: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 251
	i32 2581819634, ; 414: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 273
	i32 2585220780, ; 415: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 416: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 417: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 177
	i32 2589602615, ; 418: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 419: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 189
	i32 2593496499, ; 420: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 336
	i32 2593964533, ; 421: Xamarin.Google.Dagger => 0x9a9cc1f5 => 299
	i32 2605712449, ; 422: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 314
	i32 2615233544, ; 423: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 242
	i32 2616218305, ; 424: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 196
	i32 2617129537, ; 425: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 426: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620111890, ; 427: Xamarin.Firebase.Encoders.dll => 0x9c2bbc12 => 285
	i32 2620871830, ; 428: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 232
	i32 2623491480, ; 429: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 290
	i32 2624644809, ; 430: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 237
	i32 2626831493, ; 431: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 331
	i32 2627185994, ; 432: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 433: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 434: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 246
	i32 2639764100, ; 435: Xamarin.Firebase.Encoders => 0x9d579a84 => 285
	i32 2663391936, ; 436: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 210
	i32 2663698177, ; 437: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 438: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 439: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 440: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 441: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 442: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 179
	i32 2693849962, ; 443: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 444: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 271
	i32 2715334215, ; 445: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 446: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 447: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 448: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 449: Xamarin.AndroidX.Activity => 0xa2e0939b => 212
	i32 2735172069, ; 450: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 451: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 175
	i32 2737747696, ; 452: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 218
	i32 2740698338, ; 453: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 317
	i32 2740948882, ; 454: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 455: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 456: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 337
	i32 2758225723, ; 457: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 202
	i32 2764765095, ; 458: Microsoft.Maui.dll => 0xa4caf7a7 => 203
	i32 2765824710, ; 459: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 460: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 308
	i32 2772412848, ; 461: Xamarin.Google.Dagger.dll => 0xa53fa9b0 => 299
	i32 2778768386, ; 462: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 276
	i32 2779977773, ; 463: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 264
	i32 2785988530, ; 464: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 343
	i32 2788224221, ; 465: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 242
	i32 2801831435, ; 466: Microsoft.Maui.Graphics => 0xa7008e0b => 205
	i32 2803228030, ; 467: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804607052, ; 468: Xamarin.Firebase.Components.dll => 0xa72ae84c => 283
	i32 2810250172, ; 469: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 229
	i32 2819470561, ; 470: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 471: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 472: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 264
	i32 2824502124, ; 473: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 474: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 181
	i32 2838993487, ; 475: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 253
	i32 2847418871, ; 476: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 302
	i32 2849599387, ; 477: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 478: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 276
	i32 2855708567, ; 479: Xamarin.AndroidX.Transition => 0xaa36a797 => 272
	i32 2861098320, ; 480: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 481: Microsoft.Maui.Essentials => 0xaa8a4878 => 204
	i32 2870099610, ; 482: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 213
	i32 2875164099, ; 483: Jsr305Binding.dll => 0xab5f85c3 => 297
	i32 2875220617, ; 484: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883826422, ; 485: Xamarin.Firebase.Installations => 0xabe3b2f6 => 289
	i32 2884993177, ; 486: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 240
	i32 2887636118, ; 487: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 488: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 178
	i32 2899753641, ; 489: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 490: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 491: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 492: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 493: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 494: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 192
	i32 2914202368, ; 495: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 288
	i32 2916838712, ; 496: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 277
	i32 2919462931, ; 497: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 498: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 215
	i32 2936416060, ; 499: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 500: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 501: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 502: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 503: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 504: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 505: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 236
	i32 2987532451, ; 506: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 267
	i32 2996846495, ; 507: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 249
	i32 3016983068, ; 508: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 269
	i32 3018768960, ; 509: MauiAppNotificationNew => 0xb3eec240 => 0
	i32 3023353419, ; 510: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 511: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 244
	i32 3038032645, ; 512: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 350
	i32 3053864966, ; 513: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 323
	i32 3056245963, ; 514: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 266
	i32 3057625584, ; 515: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 257
	i32 3058099980, ; 516: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 306
	i32 3059408633, ; 517: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 518: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3071899978, ; 519: Xamarin.Firebase.Common.dll => 0xb719794a => 281
	i32 3075834255, ; 520: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 521: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 522: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 523: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3106737866, ; 524: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 284
	i32 3111772706, ; 525: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 526: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 527: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 528: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 529: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 530: GoogleGson.dll => 0xbba64c02 => 174
	i32 3150271759, ; 531: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0xbbc5550f => 315
	i32 3155362983, ; 532: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 293
	i32 3159123045, ; 533: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 534: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 535: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 258
	i32 3192346100, ; 536: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 537: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 538: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 539: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 540: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 235
	i32 3220365878, ; 541: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 542: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 543: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 303
	i32 3251039220, ; 544: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 545: Xamarin.AndroidX.CardView => 0xc235e84d => 222
	i32 3265493905, ; 546: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 547: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 548: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 549: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 550: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 551: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 552: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 553: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 554: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 323
	i32 3316684772, ; 555: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 556: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 233
	i32 3317144872, ; 557: System.Data => 0xc5b79d28 => 24
	i32 3331531814, ; 558: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 305
	i32 3340431453, ; 559: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 220
	i32 3345895724, ; 560: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 262
	i32 3346324047, ; 561: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 259
	i32 3357674450, ; 562: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 340
	i32 3358260929, ; 563: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 564: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 213
	i32 3362522851, ; 565: Xamarin.AndroidX.Core => 0xc86c06e3 => 230
	i32 3366347497, ; 566: Java.Interop => 0xc8a662e9 => 168
	i32 3371992681, ; 567: Xamarin.Firebase.Encoders.Proto.dll => 0xc8fc8669 => 287
	i32 3374999561, ; 568: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 263
	i32 3381016424, ; 569: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 319
	i32 3383578424, ; 570: Xamarin.Firebase.Encoders.JSON => 0xc9ad4f38 => 286
	i32 3395150330, ; 571: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 572: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 573: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 234
	i32 3406629867, ; 574: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 190
	i32 3421170118, ; 575: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 184
	i32 3428513518, ; 576: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 577: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 578: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 579: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 237
	i32 3445260447, ; 580: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 581: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 200
	i32 3458724246, ; 582: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 338
	i32 3464190856, ; 583: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 177
	i32 3471940407, ; 584: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 585: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 586: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 339
	i32 3485117614, ; 587: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 588: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 589: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 226
	i32 3500000672, ; 590: Microsoft.JSInterop => 0xd09dc5a0 => 199
	i32 3509114376, ; 591: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 592: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 593: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 594: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 595: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 596: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 597: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 347
	i32 3592228221, ; 598: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 349
	i32 3597029428, ; 599: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 211
	i32 3598340787, ; 600: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 601: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 602: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 603: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 261
	i32 3633644679, ; 604: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 215
	i32 3638274909, ; 605: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 606: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 247
	i32 3643446276, ; 607: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 344
	i32 3643854240, ; 608: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 258
	i32 3645089577, ; 609: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 610: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 611: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 612: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 613: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 221
	i32 3684561358, ; 614: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 226
	i32 3700866549, ; 615: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 616: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 231
	i32 3716563718, ; 617: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 618: Xamarin.AndroidX.Annotation => 0xdda814c6 => 214
	i32 3722202641, ; 619: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 186
	i32 3724971120, ; 620: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 257
	i32 3732100267, ; 621: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 622: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 181
	i32 3737834244, ; 623: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 624: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 625: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 626: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 319
	i32 3758424670, ; 627: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 185
	i32 3786282454, ; 628: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 223
	i32 3792276235, ; 629: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 630: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 200
	i32 3802395368, ; 631: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 632: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 633: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 634: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 635: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 636: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 637: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 638: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 639: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 640: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 641: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 642: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 272
	i32 3888767677, ; 643: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 262
	i32 3896106733, ; 644: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 645: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 230
	i32 3901907137, ; 646: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 647: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 224
	i32 3920221145, ; 648: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 335
	i32 3920810846, ; 649: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 650: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 275
	i32 3928044579, ; 651: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 652: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 653: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 260
	i32 3934056515, ; 654: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 307
	i32 3945713374, ; 655: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 656: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 657: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 217
	i32 3959773229, ; 658: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 249
	i32 3970018735, ; 659: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 306
	i32 4003436829, ; 660: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 661: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 216
	i32 4023392905, ; 662: System.IO.Pipelines => 0xefd01a89 => 207
	i32 4025784931, ; 663: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 664: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 202
	i32 4054681211, ; 665: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 666: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 667: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 668: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 321
	i32 4094352644, ; 669: Microsoft.Maui.Essentials.dll => 0xf40add04 => 204
	i32 4099507663, ; 670: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 671: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 672: Xamarin.AndroidX.Emoji2 => 0xf479582c => 238
	i32 4103439459, ; 673: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 345
	i32 4126470640, ; 674: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 675: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 676: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 677: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 678: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 345
	i32 4151237749, ; 679: System.Core => 0xf76edc75 => 21
	i32 4157403133, ; 680: Xamarin.Firebase.Common.Ktx.dll => 0xf7cceffd => 282
	i32 4159265925, ; 681: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 682: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 683: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 684: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 685: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 254
	i32 4185676441, ; 686: System.Security => 0xf97c5a99 => 130
	i32 4192648326, ; 687: Xamarin.Firebase.Encoders.JSON.dll => 0xf9e6bc86 => 286
	i32 4196529839, ; 688: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 689: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 690: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 334
	i32 4256097574, ; 691: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 231
	i32 4258378803, ; 692: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 253
	i32 4260525087, ; 693: System.Buffers => 0xfdf2741f => 7
	i32 4269159614, ; 694: Xamarin.Firebase.Datatransport => 0xfe7634be => 284
	i32 4271975918, ; 695: Microsoft.Maui.Controls.dll => 0xfea12dee => 201
	i32 4274623895, ; 696: CommunityToolkit.Mvvm.dll => 0xfec99597 => 173
	i32 4274976490, ; 697: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4284549794, ; 698: Xamarin.Firebase.Components => 0xff610aa2 => 283
	i32 4292120959, ; 699: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 254
	i32 4294648842, ; 700: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 191
	i32 4294763496 ; 701: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 240
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [702 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 250, ; 3
	i32 301, ; 4
	i32 48, ; 5
	i32 316, ; 6
	i32 206, ; 7
	i32 80, ; 8
	i32 325, ; 9
	i32 145, ; 10
	i32 315, ; 11
	i32 30, ; 12
	i32 349, ; 13
	i32 124, ; 14
	i32 205, ; 15
	i32 102, ; 16
	i32 333, ; 17
	i32 268, ; 18
	i32 280, ; 19
	i32 107, ; 20
	i32 268, ; 21
	i32 139, ; 22
	i32 311, ; 23
	i32 348, ; 24
	i32 341, ; 25
	i32 77, ; 26
	i32 124, ; 27
	i32 13, ; 28
	i32 223, ; 29
	i32 132, ; 30
	i32 270, ; 31
	i32 151, ; 32
	i32 18, ; 33
	i32 221, ; 34
	i32 26, ; 35
	i32 244, ; 36
	i32 1, ; 37
	i32 59, ; 38
	i32 42, ; 39
	i32 91, ; 40
	i32 176, ; 41
	i32 227, ; 42
	i32 147, ; 43
	i32 246, ; 44
	i32 243, ; 45
	i32 54, ; 46
	i32 69, ; 47
	i32 346, ; 48
	i32 212, ; 49
	i32 83, ; 50
	i32 324, ; 51
	i32 245, ; 52
	i32 131, ; 53
	i32 55, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 350, ; 60
	i32 165, ; 61
	i32 344, ; 62
	i32 228, ; 63
	i32 12, ; 64
	i32 241, ; 65
	i32 125, ; 66
	i32 152, ; 67
	i32 113, ; 68
	i32 166, ; 69
	i32 164, ; 70
	i32 243, ; 71
	i32 295, ; 72
	i32 256, ; 73
	i32 322, ; 74
	i32 295, ; 75
	i32 84, ; 76
	i32 293, ; 77
	i32 198, ; 78
	i32 150, ; 79
	i32 311, ; 80
	i32 60, ; 81
	i32 343, ; 82
	i32 194, ; 83
	i32 51, ; 84
	i32 305, ; 85
	i32 103, ; 86
	i32 114, ; 87
	i32 40, ; 88
	i32 297, ; 89
	i32 279, ; 90
	i32 191, ; 91
	i32 120, ; 92
	i32 52, ; 93
	i32 44, ; 94
	i32 119, ; 95
	i32 233, ; 96
	i32 335, ; 97
	i32 239, ; 98
	i32 81, ; 99
	i32 136, ; 100
	i32 275, ; 101
	i32 219, ; 102
	i32 8, ; 103
	i32 73, ; 104
	i32 155, ; 105
	i32 313, ; 106
	i32 154, ; 107
	i32 92, ; 108
	i32 308, ; 109
	i32 45, ; 110
	i32 312, ; 111
	i32 109, ; 112
	i32 129, ; 113
	i32 25, ; 114
	i32 209, ; 115
	i32 72, ; 116
	i32 55, ; 117
	i32 46, ; 118
	i32 341, ; 119
	i32 197, ; 120
	i32 234, ; 121
	i32 180, ; 122
	i32 22, ; 123
	i32 248, ; 124
	i32 86, ; 125
	i32 43, ; 126
	i32 160, ; 127
	i32 71, ; 128
	i32 261, ; 129
	i32 289, ; 130
	i32 326, ; 131
	i32 3, ; 132
	i32 42, ; 133
	i32 63, ; 134
	i32 340, ; 135
	i32 290, ; 136
	i32 16, ; 137
	i32 53, ; 138
	i32 337, ; 139
	i32 301, ; 140
	i32 105, ; 141
	i32 206, ; 142
	i32 312, ; 143
	i32 330, ; 144
	i32 298, ; 145
	i32 245, ; 146
	i32 34, ; 147
	i32 158, ; 148
	i32 85, ; 149
	i32 32, ; 150
	i32 339, ; 151
	i32 12, ; 152
	i32 51, ; 153
	i32 294, ; 154
	i32 193, ; 155
	i32 56, ; 156
	i32 265, ; 157
	i32 36, ; 158
	i32 188, ; 159
	i32 300, ; 160
	i32 217, ; 161
	i32 304, ; 162
	i32 35, ; 163
	i32 320, ; 164
	i32 58, ; 165
	i32 252, ; 166
	i32 174, ; 167
	i32 17, ; 168
	i32 309, ; 169
	i32 164, ; 170
	i32 185, ; 171
	i32 342, ; 172
	i32 336, ; 173
	i32 332, ; 174
	i32 251, ; 175
	i32 196, ; 176
	i32 291, ; 177
	i32 278, ; 178
	i32 338, ; 179
	i32 153, ; 180
	i32 189, ; 181
	i32 274, ; 182
	i32 259, ; 183
	i32 219, ; 184
	i32 29, ; 185
	i32 173, ; 186
	i32 52, ; 187
	i32 279, ; 188
	i32 224, ; 189
	i32 5, ; 190
	i32 318, ; 191
	i32 269, ; 192
	i32 273, ; 193
	i32 225, ; 194
	i32 313, ; 195
	i32 216, ; 196
	i32 236, ; 197
	i32 327, ; 198
	i32 85, ; 199
	i32 278, ; 200
	i32 61, ; 201
	i32 281, ; 202
	i32 112, ; 203
	i32 347, ; 204
	i32 57, ; 205
	i32 348, ; 206
	i32 265, ; 207
	i32 99, ; 208
	i32 307, ; 209
	i32 19, ; 210
	i32 229, ; 211
	i32 111, ; 212
	i32 101, ; 213
	i32 102, ; 214
	i32 316, ; 215
	i32 104, ; 216
	i32 298, ; 217
	i32 71, ; 218
	i32 38, ; 219
	i32 32, ; 220
	i32 190, ; 221
	i32 103, ; 222
	i32 73, ; 223
	i32 322, ; 224
	i32 9, ; 225
	i32 123, ; 226
	i32 46, ; 227
	i32 218, ; 228
	i32 198, ; 229
	i32 9, ; 230
	i32 43, ; 231
	i32 4, ; 232
	i32 266, ; 233
	i32 193, ; 234
	i32 346, ; 235
	i32 288, ; 236
	i32 31, ; 237
	i32 138, ; 238
	i32 92, ; 239
	i32 180, ; 240
	i32 93, ; 241
	i32 49, ; 242
	i32 141, ; 243
	i32 112, ; 244
	i32 140, ; 245
	i32 235, ; 246
	i32 115, ; 247
	i32 300, ; 248
	i32 157, ; 249
	i32 76, ; 250
	i32 79, ; 251
	i32 255, ; 252
	i32 37, ; 253
	i32 277, ; 254
	i32 186, ; 255
	i32 239, ; 256
	i32 232, ; 257
	i32 64, ; 258
	i32 138, ; 259
	i32 15, ; 260
	i32 179, ; 261
	i32 116, ; 262
	i32 271, ; 263
	i32 296, ; 264
	i32 227, ; 265
	i32 48, ; 266
	i32 70, ; 267
	i32 80, ; 268
	i32 126, ; 269
	i32 94, ; 270
	i32 121, ; 271
	i32 310, ; 272
	i32 26, ; 273
	i32 248, ; 274
	i32 97, ; 275
	i32 28, ; 276
	i32 222, ; 277
	i32 317, ; 278
	i32 149, ; 279
	i32 207, ; 280
	i32 169, ; 281
	i32 4, ; 282
	i32 98, ; 283
	i32 178, ; 284
	i32 33, ; 285
	i32 93, ; 286
	i32 270, ; 287
	i32 194, ; 288
	i32 21, ; 289
	i32 41, ; 290
	i32 170, ; 291
	i32 333, ; 292
	i32 241, ; 293
	i32 325, ; 294
	i32 255, ; 295
	i32 309, ; 296
	i32 296, ; 297
	i32 260, ; 298
	i32 2, ; 299
	i32 134, ; 300
	i32 111, ; 301
	i32 195, ; 302
	i32 209, ; 303
	i32 342, ; 304
	i32 58, ; 305
	i32 95, ; 306
	i32 324, ; 307
	i32 287, ; 308
	i32 39, ; 309
	i32 220, ; 310
	i32 25, ; 311
	i32 94, ; 312
	i32 318, ; 313
	i32 89, ; 314
	i32 99, ; 315
	i32 303, ; 316
	i32 10, ; 317
	i32 292, ; 318
	i32 87, ; 319
	i32 329, ; 320
	i32 100, ; 321
	i32 267, ; 322
	i32 182, ; 323
	i32 310, ; 324
	i32 211, ; 325
	i32 321, ; 326
	i32 7, ; 327
	i32 252, ; 328
	i32 208, ; 329
	i32 88, ; 330
	i32 184, ; 331
	i32 247, ; 332
	i32 154, ; 333
	i32 320, ; 334
	i32 33, ; 335
	i32 192, ; 336
	i32 116, ; 337
	i32 82, ; 338
	i32 294, ; 339
	i32 20, ; 340
	i32 302, ; 341
	i32 11, ; 342
	i32 162, ; 343
	i32 3, ; 344
	i32 203, ; 345
	i32 328, ; 346
	i32 280, ; 347
	i32 197, ; 348
	i32 195, ; 349
	i32 84, ; 350
	i32 314, ; 351
	i32 64, ; 352
	i32 330, ; 353
	i32 274, ; 354
	i32 143, ; 355
	i32 282, ; 356
	i32 256, ; 357
	i32 157, ; 358
	i32 41, ; 359
	i32 117, ; 360
	i32 183, ; 361
	i32 210, ; 362
	i32 263, ; 363
	i32 131, ; 364
	i32 75, ; 365
	i32 66, ; 366
	i32 334, ; 367
	i32 172, ; 368
	i32 214, ; 369
	i32 143, ; 370
	i32 0, ; 371
	i32 106, ; 372
	i32 151, ; 373
	i32 70, ; 374
	i32 328, ; 375
	i32 156, ; 376
	i32 182, ; 377
	i32 121, ; 378
	i32 127, ; 379
	i32 329, ; 380
	i32 152, ; 381
	i32 238, ; 382
	i32 176, ; 383
	i32 141, ; 384
	i32 225, ; 385
	i32 326, ; 386
	i32 20, ; 387
	i32 14, ; 388
	i32 199, ; 389
	i32 135, ; 390
	i32 75, ; 391
	i32 59, ; 392
	i32 228, ; 393
	i32 167, ; 394
	i32 168, ; 395
	i32 201, ; 396
	i32 291, ; 397
	i32 292, ; 398
	i32 15, ; 399
	i32 74, ; 400
	i32 304, ; 401
	i32 6, ; 402
	i32 23, ; 403
	i32 332, ; 404
	i32 250, ; 405
	i32 208, ; 406
	i32 175, ; 407
	i32 91, ; 408
	i32 327, ; 409
	i32 1, ; 410
	i32 136, ; 411
	i32 331, ; 412
	i32 251, ; 413
	i32 273, ; 414
	i32 134, ; 415
	i32 69, ; 416
	i32 177, ; 417
	i32 146, ; 418
	i32 189, ; 419
	i32 336, ; 420
	i32 299, ; 421
	i32 314, ; 422
	i32 242, ; 423
	i32 196, ; 424
	i32 88, ; 425
	i32 96, ; 426
	i32 285, ; 427
	i32 232, ; 428
	i32 290, ; 429
	i32 237, ; 430
	i32 331, ; 431
	i32 31, ; 432
	i32 45, ; 433
	i32 246, ; 434
	i32 285, ; 435
	i32 210, ; 436
	i32 109, ; 437
	i32 158, ; 438
	i32 35, ; 439
	i32 22, ; 440
	i32 114, ; 441
	i32 179, ; 442
	i32 57, ; 443
	i32 271, ; 444
	i32 144, ; 445
	i32 118, ; 446
	i32 120, ; 447
	i32 110, ; 448
	i32 212, ; 449
	i32 139, ; 450
	i32 175, ; 451
	i32 218, ; 452
	i32 317, ; 453
	i32 54, ; 454
	i32 105, ; 455
	i32 337, ; 456
	i32 202, ; 457
	i32 203, ; 458
	i32 133, ; 459
	i32 308, ; 460
	i32 299, ; 461
	i32 276, ; 462
	i32 264, ; 463
	i32 343, ; 464
	i32 242, ; 465
	i32 205, ; 466
	i32 159, ; 467
	i32 283, ; 468
	i32 229, ; 469
	i32 163, ; 470
	i32 132, ; 471
	i32 264, ; 472
	i32 161, ; 473
	i32 181, ; 474
	i32 253, ; 475
	i32 302, ; 476
	i32 140, ; 477
	i32 276, ; 478
	i32 272, ; 479
	i32 169, ; 480
	i32 204, ; 481
	i32 213, ; 482
	i32 297, ; 483
	i32 40, ; 484
	i32 289, ; 485
	i32 240, ; 486
	i32 81, ; 487
	i32 178, ; 488
	i32 56, ; 489
	i32 37, ; 490
	i32 97, ; 491
	i32 166, ; 492
	i32 172, ; 493
	i32 192, ; 494
	i32 288, ; 495
	i32 277, ; 496
	i32 82, ; 497
	i32 215, ; 498
	i32 98, ; 499
	i32 30, ; 500
	i32 159, ; 501
	i32 18, ; 502
	i32 127, ; 503
	i32 119, ; 504
	i32 236, ; 505
	i32 267, ; 506
	i32 249, ; 507
	i32 269, ; 508
	i32 0, ; 509
	i32 165, ; 510
	i32 244, ; 511
	i32 350, ; 512
	i32 323, ; 513
	i32 266, ; 514
	i32 257, ; 515
	i32 306, ; 516
	i32 170, ; 517
	i32 16, ; 518
	i32 281, ; 519
	i32 144, ; 520
	i32 125, ; 521
	i32 118, ; 522
	i32 38, ; 523
	i32 284, ; 524
	i32 115, ; 525
	i32 47, ; 526
	i32 142, ; 527
	i32 117, ; 528
	i32 34, ; 529
	i32 174, ; 530
	i32 315, ; 531
	i32 293, ; 532
	i32 95, ; 533
	i32 53, ; 534
	i32 258, ; 535
	i32 129, ; 536
	i32 153, ; 537
	i32 24, ; 538
	i32 161, ; 539
	i32 235, ; 540
	i32 148, ; 541
	i32 104, ; 542
	i32 303, ; 543
	i32 89, ; 544
	i32 222, ; 545
	i32 60, ; 546
	i32 142, ; 547
	i32 100, ; 548
	i32 5, ; 549
	i32 13, ; 550
	i32 122, ; 551
	i32 135, ; 552
	i32 28, ; 553
	i32 323, ; 554
	i32 72, ; 555
	i32 233, ; 556
	i32 24, ; 557
	i32 305, ; 558
	i32 220, ; 559
	i32 262, ; 560
	i32 259, ; 561
	i32 340, ; 562
	i32 137, ; 563
	i32 213, ; 564
	i32 230, ; 565
	i32 168, ; 566
	i32 287, ; 567
	i32 263, ; 568
	i32 319, ; 569
	i32 286, ; 570
	i32 101, ; 571
	i32 123, ; 572
	i32 234, ; 573
	i32 190, ; 574
	i32 184, ; 575
	i32 187, ; 576
	i32 163, ; 577
	i32 167, ; 578
	i32 237, ; 579
	i32 39, ; 580
	i32 200, ; 581
	i32 338, ; 582
	i32 177, ; 583
	i32 17, ; 584
	i32 171, ; 585
	i32 339, ; 586
	i32 137, ; 587
	i32 150, ; 588
	i32 226, ; 589
	i32 199, ; 590
	i32 155, ; 591
	i32 130, ; 592
	i32 19, ; 593
	i32 65, ; 594
	i32 147, ; 595
	i32 47, ; 596
	i32 347, ; 597
	i32 349, ; 598
	i32 211, ; 599
	i32 79, ; 600
	i32 61, ; 601
	i32 106, ; 602
	i32 261, ; 603
	i32 215, ; 604
	i32 49, ; 605
	i32 247, ; 606
	i32 344, ; 607
	i32 258, ; 608
	i32 14, ; 609
	i32 183, ; 610
	i32 68, ; 611
	i32 171, ; 612
	i32 221, ; 613
	i32 226, ; 614
	i32 78, ; 615
	i32 231, ; 616
	i32 108, ; 617
	i32 214, ; 618
	i32 186, ; 619
	i32 257, ; 620
	i32 67, ; 621
	i32 181, ; 622
	i32 63, ; 623
	i32 27, ; 624
	i32 160, ; 625
	i32 319, ; 626
	i32 185, ; 627
	i32 223, ; 628
	i32 10, ; 629
	i32 200, ; 630
	i32 11, ; 631
	i32 78, ; 632
	i32 126, ; 633
	i32 83, ; 634
	i32 188, ; 635
	i32 66, ; 636
	i32 107, ; 637
	i32 65, ; 638
	i32 128, ; 639
	i32 122, ; 640
	i32 77, ; 641
	i32 272, ; 642
	i32 262, ; 643
	i32 8, ; 644
	i32 230, ; 645
	i32 2, ; 646
	i32 224, ; 647
	i32 335, ; 648
	i32 44, ; 649
	i32 275, ; 650
	i32 156, ; 651
	i32 128, ; 652
	i32 260, ; 653
	i32 307, ; 654
	i32 23, ; 655
	i32 133, ; 656
	i32 217, ; 657
	i32 249, ; 658
	i32 306, ; 659
	i32 29, ; 660
	i32 216, ; 661
	i32 207, ; 662
	i32 62, ; 663
	i32 202, ; 664
	i32 90, ; 665
	i32 87, ; 666
	i32 148, ; 667
	i32 321, ; 668
	i32 204, ; 669
	i32 36, ; 670
	i32 86, ; 671
	i32 238, ; 672
	i32 345, ; 673
	i32 187, ; 674
	i32 50, ; 675
	i32 6, ; 676
	i32 90, ; 677
	i32 345, ; 678
	i32 21, ; 679
	i32 282, ; 680
	i32 162, ; 681
	i32 96, ; 682
	i32 50, ; 683
	i32 113, ; 684
	i32 254, ; 685
	i32 130, ; 686
	i32 286, ; 687
	i32 76, ; 688
	i32 27, ; 689
	i32 334, ; 690
	i32 231, ; 691
	i32 253, ; 692
	i32 7, ; 693
	i32 284, ; 694
	i32 201, ; 695
	i32 173, ; 696
	i32 110, ; 697
	i32 283, ; 698
	i32 254, ; 699
	i32 191, ; 700
	i32 240 ; 701
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
