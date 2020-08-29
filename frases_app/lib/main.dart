import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var frase = [
    "Quanto menos pessoas souberem de sua vida e seus projetos, mais feliz e bem sucedido você será!",
    "O sucesso nasce do querer, da determinação e persistência em se chegar a um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos, no mínimo fará coisas admiráveis.",
    "A coragem não é ausência do medo; é a persistência apesar do medo.",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos.",
    "Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada. Apenas dê o primeiro passo.",
    "Conserve os olhos fixos num ideal sublime, e lute sempre pelo que deseja, pois só os fracos desistem e só quem luta é digno de vida.",
    "Quando algo ruim acontece você tem três escolhas: deixar isso definir você, deixar isso destruir você ou fazer isso te deixar mais forte.",
    "Agir, eis a inteligência verdadeira. Serei o que quiser. Mas tenho que querer o que for. O êxito está em ter êxito, e não em ter condições de êxito. Condições de palácio tem qualquer terra larga, mas onde estará o palácio se não o fizerem ali?",
    "Lute com determinação, abrace a vida com paixão, perca com classe e vença com ousadia, porque o mundo pertence a quem se atreve e a vida é muito para ser insignificante.",
    "O êxito começa no exato momento em que o homem decide o que quer e começa a trabalhar para consegui-lo."
  ];

  var fraseGerada = "Clique abaixo para gerar uma frase!";

  void gerarFrase(){

    var numeroSorteada = Random().nextInt(frase.length)

    setState(() {
      fraseGerada = frase[numeroSorteada];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
               fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
