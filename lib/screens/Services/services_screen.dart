import 'package:flutter/material.dart';
import 'package:rive_animation/model/services.dart';
import 'package:rive_animation/screens/entryPoint/entry_point.dart';

class ServiceSelectionPage extends StatefulWidget {
  const ServiceSelectionPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ServiceSelectionPageState createState() => _ServiceSelectionPageState();
}

class _ServiceSelectionPageState extends State<ServiceSelectionPage> {

  late RealEstateService _services;

  @override
  void initState() {
    super.initState();
    _services = servicePropertyListing.first;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecciona un Servicio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          children: [
            for (int i = 0; i < servicePropertyListing.length; i++)
              if (i < 4)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EntryPoint()
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: servicePropertyListing[i].color,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          servicePropertyListing[i].iconSrc,
                          width: 80,
                          height: 80,
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          servicePropertyListing[i].name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          servicePropertyListing[i].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
