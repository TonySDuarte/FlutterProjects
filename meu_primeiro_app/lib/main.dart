import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Frases do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _numeroAleatorio = 0;
  List _frases = [
    '"Medir progresso de programação em linhas de código é como medir o progresso da construção de um avião por seu peso." - Bill Gates',
    '"Não podemos solucionar problemas usando a mesma forma de raciocínio que	 usamos quando os criamos." - Albert Einstein',
    '"O	primeiro	problema	para	todos, homens e mulheres, não é aprender, mas desaprender" -- Gloria Steinem',
    '"Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada. Apenas dê o primeiro passo." - Martin Luther King'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(4);


    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Precione o botão para gerar uma frase:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
