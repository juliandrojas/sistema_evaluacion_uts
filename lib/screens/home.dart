import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final User? user;
  const HomePage({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return const Scaffold(
        body: Center(child: Text('No hay usuario autenticado')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Información del usuario")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("UID: ${user!.uid}"),
            Text("Nombre: ${user!.displayName ?? 'No disponible'}"),
            Text("Email: ${user!.email ?? 'No disponible'}"),
            Text("Email verificado: ${user!.emailVerified}"),
            Text("Foto: ${user!.photoURL ?? 'No disponible'}"),
            Text("Teléfono: ${user!.phoneNumber ?? 'No disponible'}"),
            Text(
              "Proveedor: ${user!.providerData.isNotEmpty ? user!.providerData[0].providerId : 'No disponible'}",
            ),
            const SizedBox(height: 16),
            const Text(
              "Datos completos:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(user!.providerData.map((p) => p.toString()).join('\n\n')),
            const SizedBox(height: 16),
            const Text(
              "Metadata:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Creado: ${user!.metadata.creationTime}"),
            Text("Último acceso: ${user!.metadata.lastSignInTime}"),
          ],
        ),
      ),
    );
  }
}
