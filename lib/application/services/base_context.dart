class BaseContext {
  const BaseContext({
    required this.registerEndpoint,
    required this.loginEndpoint,
  });

  final String registerEndpoint;
  final String loginEndpoint;
}
