import 'package:flutter/material.dart';

class PaginaCinco extends StatefulWidget {
  const PaginaCinco({super.key});

  @override
  State<PaginaCinco> createState() => _PaginaCincoState();
}

class _PaginaCincoState extends State<PaginaCinco> {
  int _currentIndex = 1;

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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alinea el título a la izquierda
          children: [
            // Quitamos el "const" de aquí
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/pagina2'); 
                  },
                ),
                const Expanded(
                  child: Text(
                    'Material Didactico',
                    textAlign: TextAlign.center, // Importante para que no se mueva a la izquierda
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 48), // Mismo ancho que el botón para equilibrar el centro
              ],
            ),
          ),

            //1
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Juego de Fichas",
                      "\$150.00",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/fichas.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Calculadora",
                      "\$350.00",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/calculadora.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Libro de Colorear",
                      "\$200.00",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/colorear.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),
                ],
              ),
            ),

            const SizedBox(height: 8),

            //2
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                      context,
                      Colors.red,
                      "Diccionario",
                      "\$250.00",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/diccionario.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Colors.red,
                      "Juego de Logica",
                      "\$250",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/logica.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Colors.red,
                      "Fracciones Magneticas",
                      "\$100",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/francciones.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),
                ],
              ),
            ),

            const SizedBox(height: 8),

            //3
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Bati-Rompecabezas",
                      "\$200",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/rompecabezas.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Tarjetas de Multiplicar",
                      "\$100",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/tablas.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Libro de Trazos",
                      "\$200",
                      Colors.white,
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes_Proyecto/refs/heads/main/trazos.png",
                      '/pagina6',
                    ),
                  ),

                  const SizedBox(width: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // build container
  Widget buildContainer(
  BuildContext context,
  Color color,
  String text,
  String precio, // Nuevo parámetro para el precio
  Color textColor,
  String imageUrl, // Ahora recibe la URL de la web
  String rutaNombrada,
) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    ),
    child: InkWell(
      onTap: () => Navigator.pushReplacementNamed(context, rutaNombrada),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contenedor circular o redondeado para la imagen web
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Fondo sutil para la imagen
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.contain,
                    // Muestra un indicador de carga mientras baja la imagen
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator(color: Colors.white));
                    },
                    // Si el link falla, muestra un icono de error
                    errorBuilder: (context, error, stackTrace) => 
                      const Icon(Icons.broken_image, color: Colors.white),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 8),
            
            // Título del producto
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            // Subtítulo de Precio
            Text(
              precio,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}
