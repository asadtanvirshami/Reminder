import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _MyHomePageState(),
    );
  }
}

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        title: const Text('tute'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Text('Hellow Meow'),
          ElevatedButton(
            onPressed: () {
              print('red');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            child: const Text('Click Me'),
          ),
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(30.0),
            child: const Text('Container is me'),
          )
        ],
      ),
      // body: Center(
      //     child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     const Text('Hey Welcome'),
      //     IconButton(
      //         onPressed: () {
      //           print('text');
      //         },
      //         icon: const Icon(Icons.cabin_rounded)),
      //   ],
      // )),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[100],
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
