import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String demoUrl = '';
  static String demoUserName = '';
  static String demoPassword = '';
  static Future<void> loadConfig() async {
    await dotenv.load(fileName: "assets/env/.env_demo");
    demoUrl = dotenv.env['DEMO_URL'] ?? '';
    demoUserName = dotenv.env['DEMO_USER_NAME'] ?? '';
    demoPassword = dotenv.env['DEMO_PASSWORD'] ?? '';
  }
  //DEMO_URL=http://127.0.0.1:8081/api
// DEMO_USER_NAME=demo
// DEMO_PASSWORD=+d3m0++
}