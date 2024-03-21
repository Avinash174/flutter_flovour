import 'package:flutter/material.dart';

enum Endpoints { items, details }

class FlavorConfig {
  String? apptitle;
  Map<Endpoints, String>? apiEndpoint;
  String? imageLocation;
  ThemeData? theme;

  FlavorConfig(
      {this.apptitle = 'Flavor Demo',
        this.imageLocation = "assets/images/default.jpeg"}){
    theme = ThemeData.light();
  }
}