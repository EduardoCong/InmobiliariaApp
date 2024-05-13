import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';

class ArrendamientoDetailScreen extends StatefulWidget {
  const ArrendamientoDetailScreen({Key? key}) : super(key: key);

  @override
  State<ArrendamientoDetailScreen> createState() => _ArrendamientoDetailScreenState();
}

class _ArrendamientoDetailScreenState extends State<ArrendamientoDetailScreen> {
  late Arrendamientos _details;

  @override
  void initState() {
    super.initState();
    _details = propertiesRent.first.properties.first.arrendamientos!.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del Arrendamiento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // _buildDetailItem(label: 'Título', value: _details.codigoPro.title),
            // _buildDetailItem(label: 'Código de Referencia', value: _details.codigoPro.codRef),
            // _buildDetailItem(label: 'Fecha Inicio', value: _details.fechaInicio),
            // _buildDetailItem(label: 'Fecha Final', value: _details.fechaFinal),
            // _buildDetailItem(label: 'Monto', value: '${_details.monto}'),
            // _buildDetailItem(label: 'Periocidad', value: _details.periocidad),
            const SizedBox(height: 20),
            _buildPaymentsGrid(payments: _details.status!),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildPaymentsGrid({required List<StatusArren> payments}) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: payments.length,
      itemBuilder: (context, index) {
        return _buildPaymentItem(payment: payments[index]);
      },
    );
  }

  Widget _buildPaymentItem({required StatusArren payment}) {
    Color color;
    if (payment.statusA == 'Pagado') {
      color = Colors.green;
    } else if (payment.statusA == 'Pendiente') {
      color = Colors.yellow;
    } else {
      color = Colors.red;
    }

    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fecha de Pago: ${payment.fechaPago}',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Fecha a Pagar: ${payment.fechaApagar}',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Descuento: ${payment.descuento}',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Estado: ${payment.statusA}',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
