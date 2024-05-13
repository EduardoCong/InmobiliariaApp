import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/Requestes/request_screen.dart';
import 'package:rive_animation/screens/rent_propertys/rent_screen.dart';

class TimelineItem extends StatefulWidget {
  const TimelineItem({Key? key}) : super(key: key);

  @override
  State<TimelineItem> createState() => _TimelineItemState();
}

class _TimelineItemState extends State<TimelineItem> {
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
        title: const Text(
          'Propiedades',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          ElevatedButton(
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RentalRequestPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.all(8),
              elevation: 90
            ),
            child: const Icon(Icons.add),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _request.properties.length,
                itemBuilder: (context, index) {
                  final propiedad = _request.properties[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 350,
                            height: 150,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                            decoration: BoxDecoration(
                              color: const Color(0xFF7553F6),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.home_work_rounded, size: 70),
                              title: Text(
                                propiedad.title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                propiedad.codRef,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Propiedades rentadas",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: propiedad.rentalProperties.expand((rentalProperty) {
                            return rentalProperty.solicitudPro.expand((renta) {
                              return renta.servicios.map((servicio) {
                                return Dismissible(
                                  key: UniqueKey(),
                                  direction: DismissDirection.startToEnd,
                                  onDismissed: (direction) {
                                    setState(() {
                                      // Eliminar la solicitud aquí
                                      // Ejemplo: _request.properties[index].rentalProperties.removeAt(rentalIndex);
                                    });
                                  },
                                  background: Container(
                                    color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: const Icon(Icons.delete, color: Colors.white),
                                  ),
                                  child: Container(
                                    height:140,
                                    width: 400,
                                    margin: const EdgeInsets.symmetric(vertical: 8),
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 92, 206, 221),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const TimelinePage()),
                                        );
                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(bottom: 8),
                                            child: Text(
                                              "Solicitud: ${renta.id}",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.person,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                "Cliente: ${rentalProperty.rentingClient}",
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.info,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                "Estado: ${servicio.serviceName}",
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.info,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                "Servicio: ${renta.propertyTypes.propertyType}",
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList();
                            }).toList();
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
