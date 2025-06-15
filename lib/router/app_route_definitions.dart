enum AppRoute {
  splash('/', 'splash'),
  login('/login', 'login'),
  subjects('/subjects', 'subjects'),
  tasks('/tasks', 'tasks'),
  statistics('/statistics', 'statistics'),
  error('/error', 'error');

  final String path;
  final String name;

  const AppRoute(this.path, this.name);

  static AppRoute fromPath(String path) {
    return AppRoute.values.firstWhere(
          (value) => value.path == path,
      orElse: () => AppRoute.splash,
    );
  }
}
