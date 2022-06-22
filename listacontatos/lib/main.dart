import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Classe principal do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaContatos(
        [
          'Diogo',
          'Fernanda',
          'Gabriel',
          'Guilherme'
        ],
      ),
    );
  }
}

class ListaContatos extends StatelessWidget {
  ListaContatos(this.contatos);

  final List<String> contatos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        centerTitle: true,
        leading: Icon(Icons.contact_phone),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) => LinhaContato(contatos[index]),
      ),
    );
  }
}

class LinhaContato extends StatelessWidget {
  const LinhaContato(this.contato);

  final String contato;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person_outline),
      title: Text(contato),
      trailing: Container(
        width: 60,
        child: Row(children: [
          Icon(Icons.edit),
          SizedBox(width: 6),
          Icon(Icons.delete),
        ]),
      ),
    );
  }
}
