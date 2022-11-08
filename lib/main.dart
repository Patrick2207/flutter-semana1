import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Pgina',
      theme: ThemeData(
        // Aqui e onde e criado o tema da aplicação.
        // E alteramos a cora da pagina.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Semana 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta etapa alerta sobre alterações e faz a atulaização.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Otimiza o Flutter para fazer reexecutar métodos de compilação.
    return Scaffold(
      appBar: AppBar(
        //  Aqui pegamos o valor do objeto MyHomePage que foi criado por
        // o método App.build e use-o para definir nosso título da barra de aplicativos.
        title: Text(widget.title),
      ),
      body: Center(
        // Centraliza os objetos.
        child: Column(
          //Executa a formatação da pagina.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Texto que aparece na pagina central.
            const Text(
              'Numero de paginas abertas:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          //Add mais paginas.
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10.0,
          ),
          //Remove as paginas abertas.
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Drecrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
