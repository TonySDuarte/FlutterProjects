import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var imagemApp = AssetImage("imagens/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";

  void _opcaoSelecionada(String escolhaUsuario){
    var opcoes = ["Pedra", "Papel","Tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    switch(escolhaApp){
      case "Pedra":
        setState(() {
          this.imagemApp = AssetImage("imagens/pedra.png");
        });
        break;

      case "Papel":
        setState(() {
          this.imagemApp = AssetImage("imagens/papel.png");
        });
        break;

      case "Tesoura":
        setState(() {
          this.imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }

    //Validação do ganhador - Usuario vence
    if(
      (escolhaUsuario == "Pedra" && escolhaApp == "Tesoura")||
      (escolhaUsuario == "Tesoura" && escolhaApp == "Papel")||
      (escolhaUsuario == "Papel" && escolhaApp == "Pedra")
    ){
      //Você ganhou
      setState(() {
        this._mensagem ="Você ganhou!";
      });
    }
    //App vence
    else if(
      (escolhaApp == "Pedra" && escolhaUsuario == "Tesoura")||
      (escolhaApp == "Tesoura" && escolhaUsuario == "Papel")||
      (escolhaApp == "Papel" && escolhaUsuario == "Pedra")
    ){
      //Você pendeu
      setState(() {
        this._mensagem ="Você perdeu!";
      });

    }else{
      //Empate
      setState(() {
        this._mensagem ="Empate!";
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jo-ken-po"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),

            ),
          ),
          Image(image: this.imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("Pedra"),
                child: Image.asset("imagens/pedra.png", height: 100,),
              ),
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("Papel"),
                child: Image.asset("imagens/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("Tesoura"),
                child: Image.asset("imagens/tesoura.png", height: 100),
              )


              /*
              Image.asset("imagens/pedra.png", height: 100),
              Image.asset("imagens/tesoura.png", height: 100),
              Image.asset("imagens/papel.png", height: 100),
              */
            ],
          )
        ],
      ),
    );
  }
}
