class RentalProperty {
  final String propertyType;
  final String rentingClient;
  final List<Request> solicitudPro;

  RentalProperty({
    required this.propertyType,
    required this.rentingClient,
    required this.solicitudPro,
  });
}

class Arrendamientos{
  final Propiedad codigoPro;
  final UserRent clientArren;
  final String fechaInicio;
  final String fechaFinal;
  final String periocidad;
  final int monto;
  final List<StatusArren>? status;

  Arrendamientos({
    required this.clientArren,
    required this.codigoPro,
    required this.fechaFinal,
    required this.fechaInicio,
    required this.monto,
    required this.periocidad,
    this.status
  });
}

class StatusArren{
  final String fechaApagar;
  final String fechaPago;
  final String descuento;
  final String statusA;

  StatusArren({
    required this.descuento,
    required this.fechaApagar,
    required this.fechaPago,
    required this.statusA
  });
}

class ServicesProperty{
  final String serviceName;

  ServicesProperty({
    required this.serviceName,
  });
}

class Propiedad {
  final String title;
  final String codRef;
  final List<RentalProperty> rentalProperties;
  final List<Arrendamientos>? arrendamientos;
  final List<ServicesProperty>? serviciosPropiedad;

  Propiedad({
    required this.title,
    required this.codRef,
    required this.rentalProperties,
    this.arrendamientos,
    this.serviciosPropiedad,
  });
}

class UserRent {
  final String name;
  final String apellido;
  final List<Propiedad> properties;

  UserRent({
    required this.name,
    required this.apellido,
    required this.properties,
  });
}

class Request {
  final String id;
  final RentalProperty propertyTypes;
  final UserRent user;
  final String status;
  final List<Response> solicitudPros;
  final List<ServicesProperty> servicios;

  Request({
    required this.id,
    required this.propertyTypes,
    required this.user,
    required this.status,
    required this.solicitudPros,
    required this.servicios,
  });
}

class Response {
  final String requestId;
  final String solicitudProMessage;

  Response({
    required this.requestId,
    required this.solicitudProMessage,
  });
}



final List<UserRent> propertiesRent = [
  UserRent(
    name: "Eduardo",
    apellido: "Cong",
    properties: [
      Propiedad(
        title: "Propiedad Mezquina",
        codRef: "1233-434",
        rentalProperties: [
          RentalProperty(
            propertyType: "Local",
            rentingClient: "Ariadne Irais",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
                servicios: [
                  ServicesProperty(
                    serviceName: "Queja"
                  ),
                  ServicesProperty(
                    serviceName: "Reparacion"
                  ),
                ]
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Casa",
            rentingClient: "Paulina Campos",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
                servicios: [
                  ServicesProperty(
                    serviceName: "Reparacion"
                  ),
                  ServicesProperty(
                    serviceName: "Consulta"
                  )
                ]
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Oficina",
            rentingClient: "Marian Novelo",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
                servicios: [
                    ServicesProperty(
                    serviceName: "Reparacion"
                  ),
                  ServicesProperty(
                    serviceName: "Consulta"
                  )
                ]
              ),
            ],
          ),
        ],
        arrendamientos:[
          Arrendamientos(
            clientArren:
            UserRent(
              name: "name",
              apellido: "apellido",
              properties: []
          ), 
          codigoPro: Propiedad(title: "title", codRef: "codRef", rentalProperties: []),
          fechaFinal: "15/10/2025",
          fechaInicio: "6/05/2024",
          monto: 3000, 
          periocidad: "Mensual",
          status: [
            StatusArren(
              descuento: "Sin Descuento",
              fechaApagar: "13/05/2024",
              fechaPago: "14/05/2024",
              statusA: "Pagado"
              ),
            ]
          ),
        ]
      ),
      Propiedad(
        title: "Propiedad Enriquecedora",
        codRef: "5452-545",
        rentalProperties: [
          RentalProperty(
            propertyType: "Apartamento",
            rentingClient: "Ruth Campos",
            solicitudPro: [
              Request(
                id: "02",
                propertyTypes: RentalProperty(
                  propertyType: "Apartamento",
                  rentingClient: "Ruth Campos",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [],
                servicios: [
                    ServicesProperty(
                    serviceName: "Reparacion"
                  ),
                  ServicesProperty(
                    serviceName: "Consulta"
                  )
                ],
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Edificio",
            rentingClient: "Isaac Torres",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
                servicios: [
                    ServicesProperty(
                    serviceName: "Reparacion"
                  ),
                  ServicesProperty(
                    serviceName: "Consulta"
                  )
                ]
              ),
            ],
          ),
          RentalProperty(
            propertyType: "Estudio",
            rentingClient: "Regina Murguia",
            solicitudPro: [
              Request(
                id: "01",
                propertyTypes: RentalProperty(
                  propertyType: "Local",
                  rentingClient: "Ariadne Irais",
                  solicitudPro: [],
                ),
                user: UserRent(
                  name: "Eduardo",
                  apellido: "Cong",
                  properties: [],
                ),
                status: "Pendiente",
                solicitudPros: [
                  Response(
                    requestId: "01",
                    solicitudProMessage: "Aprobado lalalalalalalalala",
                  ),
                ],
                servicios: [
                    ServicesProperty(
                    serviceName: "Reparacion"
                  ),
                  ServicesProperty(
                    serviceName: "Consulta"
                  )
                ]
              ),
            ],
          ),
        ],
        arrendamientos:[
          Arrendamientos(
            clientArren:
            UserRent(
              name: "name",
              apellido: "apellido",
              properties: []
          ),
          codigoPro: Propiedad(title: "title", codRef: "codRef", rentalProperties: []),
          fechaFinal: "15/10/2025",
          fechaInicio: "6/05/2024",
          monto: 3000,
          periocidad: "Mensual",
          status: [
            StatusArren(
              descuento: "Sin Descuento",
              fechaApagar: "13/05/2024",
              fechaPago: "14/05/2024",
              statusA: "Pagado"
              ),
            ]
          )
        ],
      ),
      Propiedad(
        title: "Propiedad Aquino",
        codRef: "1453-214",
        rentalProperties: [],
      ),
    ],
  ),
];

final List<Request> request = [
  Request(
    id: "01",
    propertyTypes: RentalProperty(
      propertyType: "Local",
      rentingClient: "Ariadne Irais",
      solicitudPro: [],
    ),
    user: UserRent(
      name: "Eduardo",
      apellido: "Cong",
      properties: [],
    ),
    status: "Pendiente",
    solicitudPros: [
      Response(
        requestId: "01",
        solicitudProMessage: "Aprobado lalalalalalalalala",
      ),
    ],
    servicios: [
        ServicesProperty(
        serviceName: "Reparacion"
      ),
      ServicesProperty(
        serviceName: "Consulta"
      )
    ]
  ),
];