import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

bool _escolhaUsuario = false;

class _EntradaSwitchState extends State<EntradaSwitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Entrada de dados")),

      body: Container(
        child: Column(
          children: <Widget>[


            SwitchListTile(
              title: Text("Receber notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child: Text("Salvar"),
                    onPressed: (){
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
