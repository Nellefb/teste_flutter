import 'package:flutter/material.dart';

import 'contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListaContatos());
  }
}

class ListaContatos extends StatefulWidget {
  ListaContatos({super.key});

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  int contador = 0;
  bool valor = false;
  int a = 255;
  int r = 55;
  int g = 25;
  int b = 2;

  List<Contato> contatos = [
    Contato("Chiquinha", "chiquinha@gmail.com"),
    Contato("Kiko", "kiko@gmail.com"),
    Contato("Sr. Barriga", "srBarriga@gmail.com"),
    Contato("Sr. Madruga", "srMadruga@gmail.com"),
    Contato("Prof. Girafales", "profGirafales@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 150, 212),
        title: Text('Contatos Favoritos '),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext contexto, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/Chiquinha.jpg'),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color:
                    Color.fromARGB(a.toInt(), r.toInt(), g.toInt(), b.toInt()),
              ),
              onPressed: () {
                setState(() {
                  contador++;
                  valor = true;
                  print(contador);
                  a = 255;
                  r = 255;
                  g = 0;
                  b = 0;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
