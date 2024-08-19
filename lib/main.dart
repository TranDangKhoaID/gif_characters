import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gif_skill/common/configs.dart';
import 'package:gif_skill/locator.dart';
import 'package:gif_skill/my_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //firebase
  await Firebase.initializeApp();
  //supabase
  //
  await dotenv.load();
  //supabase
  await Supabase.initialize(
    url: Configs.baseUrl,
    anonKey: Configs.apiKey,
  );
  configureDependencies();
  runApp(const MyApp());
}
