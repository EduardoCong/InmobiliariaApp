import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/arrendamientos/details_arren_screen.dart';

class ArrendamientosScreen extends StatefulWidget {
  const ArrendamientosScreen({Key? key}) : super(key: key);

  @override
  State<ArrendamientosScreen> createState() => _ArrendamientosScreenState();
}

class _ArrendamientosScreenState extends State<ArrendamientosScreen> {
  late UserRent _arrendamientos;

  @override
  void initState() {
    super.initState();
    _arrendamientos = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrendamientos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: _arrendamientos.properties.length,
              itemBuilder: (context, index) {
                final property = _arrendamientos.properties[index];
                return _buildPropertyCard(property);
              },
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArrendamientoDetailScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 19, 98, 172),
                  padding: const EdgeInsets.all(5),
                ),
                child: const Text("Ver Plan de Pagos"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 19, 98, 172),
                  padding: const EdgeInsets.all(5),
                ),
                child: const Text("Ver Proximo Pago del Mes"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPropertyCard(Propiedad property) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              property.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Código de Referencia: ${property.codRef}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            for (var arrendamiento in property.arrendamientos!) ...[
              _buildArrendamientoTile(arrendamiento),
              const SizedBox(height: 20),
            ],
          ],
        ),
      ),
    ),
  );
}

Widget _buildArrendamientoTile(Arrendamientos arrendamiento) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Cliente: ${arrendamiento.clientArren.name}',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Expanded(
            child: Text(
              'Fechas: ${arrendamiento.fechaInicio} - ${arrendamiento.fechaFinal}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Text(
            'Monto: \$${arrendamiento.monto}',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Text(
        'Periocidad: ${arrendamiento.periocidad}',
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        'Estado: ${arrendamiento.status!.isEmpty ? 'Sin estado' : arrendamiento.status!.first.statusA}',
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    ],
  );
}
}
