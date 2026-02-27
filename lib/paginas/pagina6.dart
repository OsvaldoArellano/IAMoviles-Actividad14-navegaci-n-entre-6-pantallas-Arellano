import 'package:flutter/material.dart';

class PaginaSeis extends StatefulWidget {
  const PaginaSeis({super.key});

  @override
  State<PaginaSeis> createState() => _PaginaSeisState();
}

class _PaginaSeisState extends State<PaginaSeis> {
  int _currentIndex = 1; // Inicio es el índice 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'La Casita de Papel',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // --- AQUÍ SE AGREGÓ EL BOTÓN DE REGRESAR ---
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Regresa a la página anterior reemplazando la ruta
            Navigator.pushReplacementNamed(context, '/pagina5');
          },
        ),
        // ------------------------------------------
        backgroundColor: const Color.fromARGB(255, 131, 9, 0),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.list_alt_rounded), onPressed: () {}),
          IconButton(icon: const Icon(Icons.person), onPressed: () {}),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 131, 9, 0),
        unselectedItemColor: Colors.blueGrey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/');
          }
          if (index == 1) {
            Navigator.pushReplacementNamed(context, '/pagina2');
          }
          if (index == 2) {
            Navigator.pushReplacementNamed(context, '/pagina3');
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.shop_rounded), label: "Productos"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail_rounded), label: "Contacto"),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  'https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/logica.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Juego de Logica',
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                '\$250.00',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 15),
              const Text(
                'Juego de lógica de madera con piezas numeradas del 1 al 16 que se deslizan para ordenarlas correctamente, estimulando la concentración y el razonamiento lógico.',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.bookmark, color: Colors.white, size: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}