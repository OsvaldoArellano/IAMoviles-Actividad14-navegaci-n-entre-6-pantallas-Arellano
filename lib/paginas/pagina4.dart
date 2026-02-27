import 'package:flutter/material.dart';

class PaginaCuatro extends StatefulWidget {
  const PaginaCuatro({super.key});

  @override
  State<PaginaCuatro> createState() => _PaginaCuatroState();
}

class _PaginaCuatroState extends State<PaginaCuatro> {
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

      //navbar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.blueGrey,

        onTap: (index) {
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
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_rounded),
            label: "Productos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail_rounded),
            label: "Contacto",
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Novedades',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProductoCard(
                subtitulo: "Destacado",
                titulo: "Juego Geometrico color amarillo.",
                imageUrl:
                    "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/d.png",
              ),
              SizedBox(height: 25),
              ProductoCard(
                subtitulo: "Llega Pronto",
                titulo: "Set de acuarelas para niños.",
                imageUrl:
                    "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/e.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// build container
class ProductoCard extends StatelessWidget {
  final String subtitulo;
  final String titulo;
  final String imageUrl;

  const ProductoCard({
    super.key,
    required this.subtitulo,
    required this.titulo,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔤 SUBTÍTULO ARRIBA
        Text(
          subtitulo,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        // 🟥 CONTENEDOR
        Container(
          height: 160,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    imageUrl,
                    height: 160,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => 
                      const Icon(Icons.broken_image_sharp, size: 50, color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        titulo,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
