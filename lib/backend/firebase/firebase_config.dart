import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCZvhDqxmU74KHZxy-_cHCmTuf0PSYL85o",
            authDomain: "apartment-rental-free-p-lh81y5.firebaseapp.com",
            projectId: "apartment-rental-free-p-lh81y5",
            storageBucket: "apartment-rental-free-p-lh81y5.firebasestorage.app",
            messagingSenderId: "994188454347",
            appId: "1:994188454347:web:7fc827fb59eb56a7d86e4e"));
  } else {
    await Firebase.initializeApp();
  }
}
