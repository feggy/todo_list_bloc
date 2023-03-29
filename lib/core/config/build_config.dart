enum Env { development, staging, production }

class BuildConfig {
  static Map<String, String> _config = _Config.development;
  static void setEnvironment(Env env) {
    switch (env) {
      case Env.development:
        _config = _Config.development;
        break;
      case Env.staging:
        _config = _Config.staging;
        break;
      case Env.production:
        _config = _Config.production;
        break;
    }
  }

  static String get appName {
    return _config[_Config.appName]!;
  }
}

class _Config {
  static const String appName = 'APP_NAME';

  static const Map<String, String> development = {
    appName: '[DEV] Todo list',
  };

  static const Map<String, String> staging = {
    appName: '[STG] Todo list',
  };

  static const Map<String, String> production = {
    appName: 'Todo list',
  };
}
