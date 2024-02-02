import 'package:flutter/material.dart';
import 'package:navigatorexample2/tranfers.dart';
import 'package:navigatorexample2/wallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget contenidoDelBody = Text('¡Hola, Flutter!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Aplicación Flutter'),
      ),
      body: Center(
        child: contenidoDelBody,
      ),
      drawer: Drawer(
        child: ListView(
          children:[
            ListTile(
              title: const Text('Mis Transferencias'),
              onTap: () {
               
                setState(() {
                  contenidoDelBody = const Transfers();
                });
                Navigator.pop(context); 
              },
            ),
            ListTile(
              title:const Text('Mi billetera'),
              onTap: () {
                setState(() {
                  contenidoDelBody = const Wallet();
                });
                Navigator.pop(context); 
              },
            ),
          ],
        ),
      ),
    );
  }
}
