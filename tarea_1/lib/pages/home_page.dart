import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 107, 173, 130),
        body: ListView(children: <Widget>[
          Image.asset(
            'assets/images/lince.png',
            height: 180,
            width: 180,
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text("Bienvenido Lince",
                style: TextStyle(
                    fontSize: 40, color: Color.fromARGB(255, 235, 233, 235))),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Aviso'),
                  content: const Text('Esta funcion aun no esta disponible'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('Aceptar'),
                    ),
                  ],
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(189, 34, 122, 51)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 242, 235, 235))),
              child: const Text('Ingresar'),
            ),
          )
        ]));
  }
}
