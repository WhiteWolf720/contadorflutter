import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Numero de clicks'),
            Text('$contador')
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => _botonMas(),
            child: const Icon(Icons.add)),
          
          FloatingActionButton(
            onPressed: () => _botonCero(),
            child: const Icon(Icons.exposure_zero)),

          FloatingActionButton(
            onPressed: () => _botonMenos(),
            child: const Icon(Icons.remove))
        ],
      ),
      );
  }
  
  void _botonMas() {
    setState(() => contador++);
  }
  
  _botonCero() {
    setState(() => contador=0);
  }
  
  _botonMenos() {
    setState((){
      if(contador!=0){
        contador--;
      }
    });
  }
}
