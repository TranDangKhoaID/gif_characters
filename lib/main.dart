import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gif_skill/locator.dart';
import 'package:gif_skill/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(const MyApp());
}
