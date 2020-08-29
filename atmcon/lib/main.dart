import 'package:flutter/material.dart';

import 'TelaCliente.dart';
import 'TelaContato.dart';
import 'TelaEmpresa.dart';
import 'TelaServico.dart';


void main(){
  runApp(MaterialApp(
    home: TelaInicio(),
    debugShowCheckedModeBanner: false,
  ));
}

class TelaInicio extends StatefulWidget {
  @override
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {

  void _abrirEmpresa(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaEmpresa())
    );
  }

  void _abrirServico(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaServico())
    );
  }

  void _abrirContato(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaContato())
    );
  }

  void _abrirCliente(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaCliente())
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("img/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("img/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset("img/menu_servico.png"),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset("img/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset("img/menu_contato.png"),
                  ),
                ],
              ),
            ),

          ],

        ),
      ),

    );
  }
}
