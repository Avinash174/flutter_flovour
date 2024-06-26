import 'package:flutter/material.dart';
import 'config_flavors.dart';
import 'main_common.dart';

void main() {
  // Inject our own configurations
  // School 2

  mainCommon(
    FlavorConfig()
      ..apptitle = "School 2"
      ..imageLocation = "assets/images/two.png"
      ..apiEndpoint = {
        Endpoints.items: "api.flutterjunction.dev/items",
        Endpoints.details: "api.flutterjunction.dev/items"
      }
      ..theme = ThemeData.dark(),
  );
}