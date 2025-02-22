import 'package:flutter_dotenv/flutter_dotenv.dart';

class FlavorConfig {
  static String get env => dotenv.get('ENV', fallback: 'unknown');
  static String get apiUrl => dotenv.get('API_URL', fallback: 'https://default-url.com');
  static String get apiKey => dotenv.get('API_KEY', fallback: 'default-key');
}
