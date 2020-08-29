import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("img/logo.png"),
            GestureDetector(
          onTap: _exibirResultado,
        child: Image.asset("img/botao_jogar.png"),
      ),
          ],
        ),
      ),


    );
  }
}
