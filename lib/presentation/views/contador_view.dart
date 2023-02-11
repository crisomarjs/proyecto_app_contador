import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int count = 0;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text('$count',
          style: GoogleFonts.kanit(
            fontSize: 50
          )),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                count --;
              });
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                count = 0;
              });
            },
            child: const Icon(Icons.restore),
          ),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                count ++;
              });
            },
            child: const Icon(Icons.add),
          ),
          

        ],
        
      ),
       
    );
  }
}