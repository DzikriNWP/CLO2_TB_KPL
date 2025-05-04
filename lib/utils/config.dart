class RuntimeConfig {
  static final RuntimeConfig _instance = RuntimeConfig._internal();
  bool enableSound = true;

  factory RuntimeConfig() => _instance;

  RuntimeConfig._internal();
}
