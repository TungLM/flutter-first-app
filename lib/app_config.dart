import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String demoUrl = '';
  static String demoUserName = '';
  static String demoPassword = '';
  static Future<void> loadConfig() async {
    await dotenv.load(fileName: "assets/env/.test");
    demoUrl = dotenv.env['demoUrl'] ?? '';
    demoUserName = dotenv.env['demoUserName'] ?? '';
    demoPassword = dotenv.env['demoPassword'] ?? '';
  }
  //DEMO_URL=http://127.0.0.1:8081/api
// DEMO_USER_NAME=demo
// DEMO_PASSWORD=+d3m0++
}