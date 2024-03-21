import 'package:flutter/material.dart';
import 'package:flutter_flovour/config_flavors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var flavorConfigProvider;
void mainCommon(FlavorConfig config) {
  flavorConfigProvider=StateProvider((ref) => config);
  runApp(ProviderScope(child: MyApp()));

}

class MyApp extends ConsumerWidget {

  Widget build(BuildContext context,ref){
    final config =ref.read(flavorConfigProvider);
    return MaterialApp(
      title:  config.apptitle,
      theme: config.theme,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    print(ref.read(flavorConfigProvider.notifier).state.apptitle);
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.read(flavorConfigProvider).apptitle),
      ),
      body: Image.asset(
        ref.read(flavorConfigProvider).imageLocation!,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}



