import 'package:flutter/material.dart';

class PaginaUno extends StatefulWidget {
  const PaginaUno({super.key});

  @override
  State<PaginaUno> createState() => _PaginaUnoState();
}

class _PaginaUnoState extends State<PaginaUno> {
  int _currentIndex = 0; // Inicio es el índice 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 131, 9, 0),
        unselectedItemColor: Colors.blueGrey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // Lógica para navegar a PaginaDos si se presiona "Productos"
          if (index == 1) {
             Navigator.pushReplacementNamed(context, '/pagina2');
          }
          if (index == 2){
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
        child: Column(
          children: [
            const Divider(height: 1, color: Colors.grey),
            
            // Sección del Banner (Imagen con bordes rojos)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    vertical: BorderSide(color: Color.fromARGB(255, 239, 16, 0), width: 30),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 10)
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/file_000000002a9c71fd9f89ce49f40859df.png',
                        height: 250,
                      )
                    ],
                  ),
                ),
              ),
            ),

            // Texto Novedades
            const Text(
              "Novedades",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // Botón Rojo con Flecha (El círculo rojo del boceto)
            ElevatedButton(
              onPressed: () {
                // Esta línea es la que realiza la magia del cambio de página
                Navigator.pushReplacementNamed(context, '/pagina4');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 239, 16, 0),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              child: const Icon(Icons.arrow_forward, color: Colors.white), // Cambié a blanco para que resalte más en el fondo rojo
            ),

            const SizedBox(height: 40),

            // Eslogan final
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "¡Tu Papeleria de Confianza!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}