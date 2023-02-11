import 'package:flutter/material.dart';


class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
  
}

class _SettingsViewState extends State<SettingsView> {
  int count = 0;

    final TextEditingController _texoController = TextEditingController(text: "");


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(padding: const EdgeInsets.all(20),
          child:  TextField(
            keyboardType: TextInputType.number,
            controller: _texoController,
            decoration: const InputDecoration(
              hintText: "Ingrese un nuevo valor",
            ),
          ),),
          FloatingActionButton(onPressed:(){}, child: const Text('Enviar'),)
        ]
      ),
    );
  }
}