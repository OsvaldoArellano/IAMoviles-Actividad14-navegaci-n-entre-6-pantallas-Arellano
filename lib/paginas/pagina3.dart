import 'package:flutter/material.dart';

class PaginaTres extends StatefulWidget {
  const PaginaTres({super.key});

  @override
  State<PaginaTres> createState() => _PaginaTresState();
}

class _PaginaTresState extends State<PaginaTres> {
  // El índice 2 corresponde a "Contacto" en tu BottomNavigationBar
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo más limpio para lectura
        appBar: AppBar(
        title: const Text(
          'La Casita de Papel',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        backgroundColor: const Color.fromARGB(255, 131, 9, 0),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.list_alt_rounded), onPressed: () {}),

          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ),

      // Navbar coherente con tus otras páginas
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
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/pagina2');
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.shop_rounded), label: "Productos"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail_rounded), label: "Contacto"),
        ],
      ),

      body: SingleChildScrollView( // Permite scroll si el contenido es grande
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Ícono superior decorativo
              const Icon(Icons.label, size: 80, color: Color.fromARGB(255, 131, 9, 0)),
  
              const SizedBox(height: 20),
              
              const Text(
                '¿Cómo podemos ayudarte?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // Tarjeta de Gmail
              Card(
                elevation: 4,
                child: ListTile(
                  leading: const Icon(Icons.email, color: Color.fromARGB(255, 239, 16, 0)),
                  title: const Text('Correo Electrónico'),
                  subtitle: const Text('lacasitadepapel@gmail.com'),
                  onTap: () {
                    // Aquí podrías agregar lógica para abrir el correo
                  },
                ),
              ),

              const SizedBox(height: 15),

              // Tarjeta de Teléfono
              Card(
                elevation: 4,
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.green),
                  title: const Text('Teléfono / WhatsApp'),
                  subtitle: const Text('+52 656 166 5588'),
                  onTap: () {
                    // Aquí podrías agregar lógica para llamar
                  },
                ),
              ),

              const SizedBox(height: 40),

              // Contenedor con Imagen
              
              const SizedBox(height: 15),

              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/file_000000002a9c71fd9f89ce49f40859df.png', 
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(child: Icon(Icons.image, size: 50));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}