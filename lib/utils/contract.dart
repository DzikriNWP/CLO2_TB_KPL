class Contract {
  static void requires(bool condition, String message) {
    if (!condition) throw ArgumentError('Precondition failed: $message');
  }

  static void ensures(bool condition, String message) {
    if (!condition) throw StateError('Postcondition failed: $message');
  }
}
