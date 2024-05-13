// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';

class RentalRequestPage extends StatefulWidget {
  const RentalRequestPage({Key? key}) : super(key: key);

  @override
  _RentalRequestPageState createState() => _RentalRequestPageState();
}

class _RentalRequestPageState extends State<RentalRequestPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late UserRent _selectedUser;
  String _requestStatus = 'Pendiente';
  bool _isActive = true;

  @override
  void initState() {
    super.initState();
    _selectedUser = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitud de Servicio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  constraints: const BoxConstraints(maxWidth: 300),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _selectedUser.properties.first.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        _selectedUser.properties.first.codRef,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16.0,
                        ),
                      ),
                      _buildServiceNames(),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Descripción',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una descripción';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Solicitud Enviada'),
                              content: const Text('¡Su solicitud de alquiler ha sido enviada con éxito!'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Aceptar'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text('Enviar'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text('Cancelar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildServiceNames() {
    if (_selectedUser.properties.first.serviciosPropiedad != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _selectedUser.properties.first.serviciosPropiedad!
            .map((service) => Text(
                  service.serviceName,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16.0,
                  ),
                ))
            .toList(),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
