import 'package:flutter/material.dart';

class PaginaDos extends StatefulWidget {
  const PaginaDos({super.key});

  @override
  State<PaginaDos> createState() => _PaginaDosState();
}

class _PaginaDosState extends State<PaginaDos> {
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
          if (index == 2) {
            Navigator.pushReplacementNamed(context, '/pagina3');
          }
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.shop_rounded),label: "Productos",),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail_rounded),label: "Contacto",),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alinea el título a la izquierda
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
              child: Text(
                'Categorías',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Color similar al AppBar
                ),
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
                      "Cuadernos",
                      Colors.white,
                      Icons.menu_book,
                      '/pagina5',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Geometria",
                      Colors.white,
                      Icons.rule_folder_outlined,
                      '/pagina5',
                    ),
                  ),
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
                      "Escritura",
                      Colors.white,
                      Icons.edit,
                      '/pagina5',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Colors.red,
                      "Material Didactico",
                      Colors.white,
                      Icons.abc_outlined,
                      '/pagina5',
                    ),
                  ),
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
                      "Papel",
                      Colors.white,
                      Icons.pages_outlined,
                      '/pagina5',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: buildContainer(
                      context,
                      Color.fromARGB(255, 239, 16, 0),
                      "Más",
                      Colors.white,
                      Icons.add,
                      '/pagina5',
                    ),
                  ),
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
    Color textColor,
    IconData icon,
    String rutaNombrada,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, rutaNombrada);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: textColor, size: 35),

              const SizedBox(height: 10),

              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
