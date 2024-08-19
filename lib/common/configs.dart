import 'package:flutter_dotenv/flutter_dotenv.dart';

class Configs {
  static const String baseUrl = 'https://qvrouttvvojvovyudjui.supabase.co';
  static String apiKey = dotenv.env['API_KEY']!;
}
