class MockLoginUseCase {
  Future<Map<String, String>> execute({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (email == 'user@example.com' && password == 'password') {
      // Return a mock user object/data
      return {'id': 'user-123', 'token': 'mock-jwt-token'};
    }
    throw Exception('Invalid credentials');
  }
}
