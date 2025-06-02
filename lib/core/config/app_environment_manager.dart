import 'app_environment.dart';

class AppEnvironmentManager {
  final AppEnvironment environment;

  const AppEnvironmentManager._(this.environment);

  static late final AppEnvironmentManager _instance;

  static AppEnvironmentManager get instance => _instance;

  static Future<void> ensureInitialized() async {
    const envName = String.fromEnvironment('ENV', defaultValue: 'dev');
    final environment = AppEnvironment.fromName(envName);
    _instance = AppEnvironmentManager._(environment);
  }
}