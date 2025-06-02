enum AppEnvironment {
  development('dev'),
  production('prod');

  final String name;

  const AppEnvironment(this.name);

  static AppEnvironment fromName(String name) {
    return AppEnvironment.values.firstWhere(
          (value) => value.name == name,
      orElse: () => AppEnvironment.development,
    );
  }
}