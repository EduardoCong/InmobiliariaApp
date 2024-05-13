import 'package:flutter/material.dart';

class RealEstateService {
  final String name, description, iconSrc;
  final Color color;

  RealEstateService({
    required this.name,
    this.description = 'Description of the service',
    this.iconSrc = "assets/icons/home.svg",
    this.color = const Color(0xFF3657BB),
  });
}

final List<RealEstateService> servicePropertyListing = [
  RealEstateService(
    name: "Property Listing",
    description: "List your property for sale or rent",
    iconSrc: "assets/icons/property_listing.svg",
    color: const Color(0xFF3657BB),
  ),
];

final List<RealEstateService> servicePropertyManagement = [
  RealEstateService(
    name: "Property Management",
    description: "Professional management of your rental properties",
    iconSrc: "assets/icons/property_management.svg",
    color: const Color(0xFF43A047),
  ),
];

final List<RealEstateService> servicePropertyValuation = [
  RealEstateService(
    name: "Property Valuation",
    description: "Get an accurate valuation of your property",
    iconSrc: "assets/icons/property_valuation.svg",
    color: const Color(0xFFEC407A),
  ),
];

final List<RealEstateService> servicePropertyConsultation = [
  RealEstateService(
    name: "Property Consultation",
    description: "Expert advice on buying, selling, or investing in property",
    iconSrc: "assets/icons/property_consultation.svg",
    color: const Color(0xFF0288D1),
  ),
];
