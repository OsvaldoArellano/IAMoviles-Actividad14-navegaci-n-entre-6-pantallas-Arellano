import 'package:flutter/material.dart';
import 'package:myapp/paginas/pagina1.dart';
import 'package:myapp/paginas/pagina2.dart';
import 'package:myapp/paginas/pagina3.dart';
import 'package:myapp/paginas/pagina4.dart';
import 'package:myapp/paginas/pagina5.dart';
import 'package:myapp/paginas/pagina6.dart';


void main() {
  runApp(const MiAppArellano());
}

class MiAppArellano extends StatelessWidget {
  const MiAppArellano({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La Casita De Papel',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 131, 9, 0)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaUno(),
        '/pagina2': (context) => const PaginaDos(),
        '/pagina3': (context) => const PaginaTres(),
        '/pagina4': (context) => const PaginaCuatro(),
        '/pagina5': (context) => const PaginaCinco(),
        '/pagina6': (context) => const PaginaSeis(),
      },
    );
  }
}
