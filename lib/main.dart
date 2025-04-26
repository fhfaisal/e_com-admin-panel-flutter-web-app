import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:t_store/app.dart';
import 'package:t_store/firebase_options.dart';
import 'package:t_store/utils/constants/sizes.dart';

void main() async {
  //ensure the widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  //initialize the firebase and authentication repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //the main app starts here
  runApp(const App());
}

