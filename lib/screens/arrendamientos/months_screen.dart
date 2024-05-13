import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';

class ResumenArrendamiento extends StatefulWidget {
  const ResumenArrendamiento({Key? key}) : super(key: key);

  @override
  State<ResumenArrendamiento> createState() => _ResumenArrendamientoState();
}

class _ResumenArrendamientoState extends State<ResumenArrendamiento> {
  late UserRent _arrendaMonth;

  @override
  void initState() {
    super.initState();
    _arrendaMonth = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumen de Pago de Arrendamiento'),
      ),
      body: Center(
        child: _buildCard(),
      ),
    );
  }

  Widget _buildCard() {
    if (_arrendaMonth.properties.isEmpty ||
        _arrendaMonth.properties.first.arrendamientos == null ||
        _arrendaMonth.properties.first.arrendamientos!.isEmpty) {
      return const Center(
        child: Text(
          'No hay datos disponibles',
          style: TextStyle(fontSize: 18),
        ),
      );
    }

    final arrendamiento = _arrendaMonth.properties.first.arrendamientos!.first;

    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Resumen de Arrendamiento',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          _buildDivider(),
          _buildDetailItem('Inquilino', propertiesRent.first.properties.first.rentalProperties.first.rentingClient),
          _buildDivider(),
          _buildDetailItem('Monto del Pago', '\$${arrendamiento.monto}'),
          _buildDivider(),
          _buildDetailItem('Fecha del Pago', arrendamiento.status?.first.fechaApagar ?? 'No especificada'),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey.shade300,
    );
  }
}
