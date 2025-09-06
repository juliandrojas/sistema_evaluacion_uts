import 'package:flutter/material.dart';
import 'package:sistema_evaluacion_uts/controllers/auth.controller.dart';
import 'package:sistema_evaluacion_uts/utils/custom_appbar.dart';
import 'package:sistema_evaluacion_uts/utils/custom_bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppBar('Inicio'),
        body: Center(
          child: Card(
            elevation: 10, // Sombra para dar profundidad
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              width:
                  double.infinity, // Ocupa todo el ancho disponible en la Card
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Ajusta el alto al contenido
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Icono grande arriba
                  Image.asset(
                    'images/logo_uts.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain, // 👈 Mantiene proporciones y no corta
                  ),
                  const SizedBox(height: 16),

                  // Título y subtítulo
                  const ListTile(
                    contentPadding: EdgeInsets.zero, // Elimina padding interno
                    title: Text(
                      'Bienvenido',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Inicia sesión con tu cuenta institucional de Microsoft',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Botón de login
                  ElevatedButton(
                    style: customElevatedButtonStyle(),
                    onPressed: () {
                      final authController = AuthController(
                        email: "user@domain.com",
                        password: "123456789",
                      );
                      authController.login();
                    },
                    child: const Text(
                      'Ingresar con Microsoft',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
