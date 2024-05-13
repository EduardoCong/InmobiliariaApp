import 'package:flutter/material.dart';

class RentalStatementPage extends StatelessWidget {
  const RentalStatementPage({Key? key, this.status}) : super(key: key);

  final RentalStatus? status;

  @override
  Widget build(BuildContext context) {
    String title = '';
    Color? statusColor;
    switch (status) {
      case RentalStatus.pending:
        title = 'Estado de Cuenta: Pendiente de Pago';
        statusColor = Colors.orange;
        break;
      case RentalStatus.paid:
        title = 'Estado de Cuenta: Pagado';
        statusColor = Colors.green;
        break;
      case RentalStatus.overdue:
        title = 'Estado de Cuenta: Vencido';
        statusColor = Colors.red;
        break;
      case RentalStatus.past:
        title = 'Estado de Cuenta: Pasado';
        statusColor = Colors.grey;
        break;
      default:
        title = 'Estado de Cuenta';
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: statusColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detalles del Arrendamiento',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            _buildItemRow(context, 'Alquiler Mensual', '\$1200.00'),
            _buildItemRow(context, 'Cargos por Servicios Públicos', '\$150.00'),
            _buildItemRow(context, 'Cargos por Mantenimiento', '\$50.00'),
            const Divider(),
            _buildItemRow(context, 'Total', '\$1400.00', fontWeight: FontWeight.bold),
          ],
        ),
      ),
    );
  }

  Widget _buildItemRow(BuildContext context, String title, String value, {FontWeight? fontWeight}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

enum RentalStatus {
  pending,
  paid,
  overdue,
  past,
}
