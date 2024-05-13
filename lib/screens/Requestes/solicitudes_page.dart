import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/Requestes/timeline_screen.dart';

class Solicitudes extends StatefulWidget {
  const Solicitudes({Key? key}) : super(key: key);

  @override
  State<Solicitudes> createState() => _SolicitudesState();
}

class _SolicitudesState extends State<Solicitudes> {
  late UserRent _request;

  @override
  void initState() {
    super.initState();
    _request = propertiesRent.first;
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Center(
        child: Text('Historial')
      ),
    ),
    body: ListView.builder(
      itemCount:  _request.properties.length,
      itemBuilder: (context, index) {
        var property =  _request.properties[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                '${property.title} (${property.codRef})',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: property.rentalProperties.expand((rentalProp) {
                return rentalProp.solicitudPro.map((solicitud) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      title: Text('Solicitud ID: ${solicitud.id}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tipo de propiedad: ${rentalProp.propertyType}'),
                          Text('Cliente: ${rentalProp.rentingClient}'),
                          Text('Estado: ${solicitud.status}'),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const TimelineItem(),
                          )
                        );
                      },
                    ),
                  );
                }).toList();
              }).toList(),
            ),
          ],
        );
      },
    ),
  );
}

}
