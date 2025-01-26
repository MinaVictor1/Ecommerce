import 'package:ecommerce/core/utils/env_variables.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  SupabaseService._();

  static final SupabaseService _instance = SupabaseService._();

  factory SupabaseService() => _instance;

  Future<void> initialize() async {
    await Supabase.initialize(
      url: EnvVariable.instance.supabaseUrl,
      anonKey: EnvVariable.instance.supabaseKey,
    );
  }

  SupabaseClient get client => Supabase.instance.client;
}
