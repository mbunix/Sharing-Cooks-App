// ignore_for_file: constant_identifier_names

enum AppContext {
  /// [AppTest] app running on test environment. This indicates that the will call a specific
  /// endpoint specifically for testing
  AppTest,

  /// [AppDemo] app running on demo environment. This indicates that the will call a specific
  /// endpoint specifically for demo
  AppDemo,

  /// [AppProd] app running on prod environment. This indicates that the will call a specific
  /// endpoint specifically for production
  AppProd
}

enum OrderStatus {
  requested,
  accepted,
  delivered,
  rejected,
}

enum ProfileType{
  cook,
  client,
}
