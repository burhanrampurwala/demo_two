class AppEnvironmentVariables {
  static const appName = "app-name";
  static const debugBannerBoolean = "debug-banner-boolean";

  static Map<String, dynamic> dev = {
    appName: 'Bloc Demo Dev',
    debugBannerBoolean: true,

  };
  static Map<String, dynamic> prod = {
    appName: 'Bloc Demo Prod',
    debugBannerBoolean: false,
  };
}
