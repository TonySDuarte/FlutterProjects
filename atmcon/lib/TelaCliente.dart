import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Cliente",),
          backgroundColor: Colors.green,
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset("img/detalhe_cliente.png"),
                    Padding(padding: EdgeInsets.only(left: 16)),
                    Text(
                      "Clientes",
                      style: TextStyle(
                          fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text("Texto sobre os clientes."),
                ),
              ],
            ),

          ),

        )

    );
  }
}
