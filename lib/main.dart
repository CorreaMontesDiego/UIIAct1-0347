import "package:flutter/material.dart";
import 'package:correa0347/pantallas0347/panel0347/panel_pantalla0347.dart';

void main() => runApp(MiAppCmdCars0347());

class MiAppCmdCars0347 extends StatelessWidget {
  const MiAppCmdCars0347({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CmdCars Correa0347",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: PanelPantalla0347(),
    );
  }
}
