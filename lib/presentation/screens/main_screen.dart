import 'package:aplicacion_contador/presentation/views/contador_view.dart';
import 'package:aplicacion_contador/presentation/views/settings_view.dart';

import 'package:flutter/material.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    final screens = [
      const CounterView(),
      const SettingsView()
    ];

    return  Scaffold(
      backgroundColor: (click == false) ? Colors.blue : Colors.blueGrey,
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        backgroundColor: const Color(0x00ffffff),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restore),
            label: 'Contador'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuracion'
          )
        ],
      ),      
      
    );
  }

  FloatingActionButton cambiarColor() {
    return FloatingActionButton(
          onPressed: (){
            setState(() {
              click = !click;
            });
          },
          child: Icon((click == false) ? Icons.circle : Icons.circle_outlined),
        );
  }
}