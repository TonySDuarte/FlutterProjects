import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

String _escolhaUsuario;

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioButton")),
      body: Container(
        child: Column(
          children: <Widget>[

            RadioListTile(
              title: Text("Masculino"),
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                }
            ),

            RadioListTile(
                title: Text("Feminino"),
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),

            RaisedButton(
                child: Text("Salva"),
                onPressed: (){
              print("Resultado ${_escolhaUsuario}");
            })

            /*Text("Masculino"),
            Radio(
                value: "M",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),

            Text("Feminino"),
            Radio(
                value: "F",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),*/

          ],

        ),

      ),
    );
  }
}
