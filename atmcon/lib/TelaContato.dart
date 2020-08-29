import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Contato",),
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
                    Image.asset("img/detalhe_contato.png"),
                    Padding(padding: EdgeInsets.only(left: 16)),
                    Text(
                      "Contato",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text("Texto sobre contato."),
                ),
              ],
            ),

          ),

        )

    );
  }
}
