import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBr = false;
  bool _comidaMx = false;
  String _texto = "Selecionado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            CheckboxListTile(
                title: Text("Comida brasileira"),
                value: _comidaBr,
                selected: true,
                secondary: Icon(Icons.attach_money),
                onChanged: (bool valor){
                  setState(() {
                    _comidaBr = valor;
                  });
                }),

            CheckboxListTile(
                title: Text("Comida mexicana"),
                value: _comidaMx,
                selected: true,
                secondary: Icon(Icons.attach_money),
                onChanged: (bool valor){
                  setState(() {
                    _comidaMx = valor;
                  });
                }),
            RaisedButton(
                child:Text("Salvar",style: TextStyle(fontSize: 20)),
                onPressed: (){
                  setState(() {
                    _texto = "Comida MX: " + _comidaMx.toString()+ " Comida BR: "
                        + _comidaBr.toString();
                  });
                }),
            Text(
              _texto,
              style: TextStyle(fontSize: 30),
            )



            /*Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool valor){
                setState(() {
                  _estaSelecionado = valor;
                });
              },
            )*/



          ],
        ),
      ),
    );
  }
}
