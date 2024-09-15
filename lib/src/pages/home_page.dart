import 'package:flutter/material.dart';
import 'package:mi_aplicacion/src/Widgets/header_widget.dart';
import 'package:mi_aplicacion/src/Widgets/lista_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 16,16,16),
      body: Column(
        children: <Widget>[
          HeaderWidget(),
          Listapersonajes(),
        
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        
      ),
    );
  }
}