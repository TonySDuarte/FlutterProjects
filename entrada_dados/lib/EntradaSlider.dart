import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double valor = 5;
  String label = "Valor selecionado.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Slider"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[

            Slider(
                value: valor,
                min: 0,
                max: 10,
                label: label,
                divisions: 5,
                onChanged: (double novoValor){
                  setState(() {
                    valor = novoValor;
                    label = novoValor.toString();
                  });
                }
            ),

            RaisedButton(
                child: Text("Salvar", style: TextStyle(fontSize: 20),),
                onPressed: (){
                  print(valor);
                })

          ],

        ),
      ),
    );
  }
}
