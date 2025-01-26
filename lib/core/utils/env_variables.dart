import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVariable {
  EnvVariable._();

  static final EnvVariable instance = EnvVariable._();

  String _supabaseKey = '';
  String _supabaseUrl = '';

  Future<void> init() async {
    await dotenv.load(fileName: '.env.ser');

    _supabaseKey = dotenv.env['SUPABASE_KEY'] ?? '';
    _supabaseUrl = dotenv.env['SUPABASE_URL'] ?? '';

    if (_supabaseKey.isEmpty || _supabaseUrl.isEmpty) {
      throw Exception('Missing SUPABASE configuration in .env.ser');
    }
  }

  String get supabaseKey => _supabaseKey;
  String get supabaseUrl => _supabaseUrl;
}
