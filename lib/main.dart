// Importa as ferramentas do flutter.
import 'package:flutter/material.dart';


// Cria a aplicação.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Esta é a raiz da aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      // Aqui e onde e criado o tema da aplicação.
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

// Este widget é a página inicial do seu aplicativo. É stateful, ou seja,
//Tem um objeto State (definido abaixo) que contém os campos afetados.

//Esta classe é a configuração do estado. ele mantém o valor.
//corresponde ao título fornecido pelo pai (neste caso, o widget do aplicativo) e
//Usado pelo método de construção do estado. Os campos na subclasse Widget são
//Sempre marcado como "final.

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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // Esta vírgula à direita torna a formatação automática mais agradável para métodos de compilação.
    );
  }
}
