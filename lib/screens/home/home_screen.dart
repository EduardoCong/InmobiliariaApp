import 'package:flutter/material.dart';
import 'package:rive_animation/model/inmobiliria.dart';
import 'package:rive_animation/screens/home/components/course_card.dart';
import 'package:rive_animation/screens/home/components/secondary_course_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserRent _user;

  @override
  void initState() {
    super.initState();
    _user = propertiesRent.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Propiedades",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                itemCount: _user.properties.length,
                itemBuilder: (context, index) {
                  final propiedad = _user.properties[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CourseCard(
                          title: propiedad.title,
                          codrefs: propiedad.codRef,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "En renta",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: propiedad.rentalProperties.map((rentalProperty) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                child: SecondaryCourseCard(
                                  proClient: 'Tipo de Propiedad: ${rentalProperty.propertyType}',
                                  type: 'Cliente: ${rentalProperty.rentingClient}',
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
