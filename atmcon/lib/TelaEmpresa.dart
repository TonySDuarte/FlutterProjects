import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa",),
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
                  Image.asset("img/detalhe_empresa.png"),
                  Padding(padding: EdgeInsets.only(left: 16)),
                  Text(
                    "Sobre a empresa",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                      child: Text("Texto sobre a empresa."),
              ),
            ],
          ),

        ),

      )

    );
  }
}
