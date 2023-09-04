import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    /// if you want configuration for web from here
    /// and fill your data from web's google-services.json file ///
    // if (kIsWeb) {
    //   // Web
    //   return const FirebaseOptions(
    //     apiKey: '',
    //     authDomain: '',
    //     databaseURL:'',
    //     projectId: '',
    //     storageBucket: '',
    //     messagingSenderId: '',
    //     appId: '',
    //     measurementId: '',
    //   );

    /// also if you wont configuration for IOS from here
    /// and fill your data from IOS's google-services.json file ///
    // } else if (Platform.isIOS || Platform.isMacOS) {
    //   // iOS and MacOS
    //   return const FirebaseOptions(
    //     apiKey: '',
    //     authDomain: '',
    //     databaseURL:'',
    //     projectId: '',
    //     storageBucket: '',
    //     messagingSenderId: '',
    //     appId: '',
    //     measurementId: '',
    //   );
    // } else {
    //   // Android

    /// To do change your data from google-services.json file ///
    /// in this configuration we work for android only  ///
    return const FirebaseOptions(

      appId:  "1:611564928975:android:8a181dbd3be16416a21cba",
      apiKey:  "AIzaSyD7UIkIfNXHaipL4O_CrSINqINtlucVAY0",
      projectId:  "push-notification-84ee4",
      androidClientId:
      "611564928975-o7kd212g3pdeqdfafqb0d3ifhs2f90lg.apps.googleusercontent.com",
      // we can find it from firebase/project setting /  Cloud Messaging
      messagingSenderId: '611564928975',
      // we can find it from firebase/ Authentication /Sign-in method
      authDomain: 'push-notification-84ee4.firebaseapp.com',
    );

  }
}
