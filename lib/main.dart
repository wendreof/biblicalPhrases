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
        primarySwatch: Colors.deepOrange,
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
  int _randomNumber = 0;
  List _frases = [
    'Mas eis aqui uma prova brilhante de amor de Deus por nós: quando éramos ainda pecadores, Cristo morreu por nós. (Romanos 5.8)',
    'Nós conhecemos e cremos no amor que Deus tem para conosco. Deus é amor, e quem permanece no amor permanece em Deus e Deus nele. (1 João 4.16)',
    'Com efeito, de tal modo Deus amou o mundo, que lhe deu seu Filho único, para que todo o que nele crer não pereça, mas tenha a vida eterna. (João 3.16)',
    'Reconhece, pois, que o Senhor, teu Deus, é verdadeiramente Deus, um Deus fiel, que guarda a sua aliança e a sua misericórdia até a milésima geração para com aqueles que o amam e observam os seus mandamentos. (Deuteronômio 7.9)',
    'Como é preciosa a vossa bondade, ó Deus! À sombra de vossas asas se refugiam os filhos dos homens. (Salmo 35.8)',
    'Louvai o Deus do céu, porque sua misericórdia é eterna. (Salmo 135.26)',
    'Pois estou persuadido de que nem a morte, nem a vida, nem os anjos, nem os principados, nem o presente, nem o futuro, nem as potestades, nem as alturas, nem os abismos, nem outra qualquer criatura nos poderá apartar do amor que Deus nos testemunha em Cristo Jesus, nosso Senhor. (Romanos 8.38-39)',
    'Mas Deus, que é rico em misericórdia, impulsionado pelo grande amor com que nos amou, quando estávamos mortos em consequência de nossos pecados, deu-nos a vida juntamente com Cristo – é por graça que fostes salvos! -, juntamente com ele nos ressuscitou e nos fez assentar nos céus, com Cristo Jesus. (Efésios 2.4-5)'
  ];

  void _incrementCounter() {
    setState(() {
      _randomNumber = new Random().nextInt(7);
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
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              _frases[_randomNumber],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
