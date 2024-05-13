import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre de Usuario',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                'Información personal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              title: Text('Nombre'),
              subtitle: Text('Nombre de usuario'),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text('Correo electrónico'),
              subtitle: Text('usuario@example.com'),
              leading: Icon(Icons.email),
            ),
            const ListTile(
              title: Text('Teléfono'),
              subtitle: Text('+1234567890'),
              leading: Icon(Icons.phone),
            ),
            const ListTile(
              title: Text('Dirección'),
              subtitle: Text('Calle Principal 123'),
              leading: Icon(Icons.location_on),
            ),
          ],
        ),
      ),
    );
  }
}
