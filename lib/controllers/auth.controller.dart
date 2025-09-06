class AuthController {
  final String email;
  final String password;

  // Constructor con parámetros nombrados
  AuthController({required this.email, required this.password});

  // Método
  void login() {
    print('Iniciando sesión con: $email');
    // Aquí iría la lógica de login (API, validación, etc.)
  }
}
