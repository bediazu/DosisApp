import 'package:dosis_app/widgets/home/body_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación de Dosis'),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: HomeBody(),
      
    );
  }
}