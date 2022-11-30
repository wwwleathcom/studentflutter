import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(
            onPressed: (() {
              debugPrint('clicked');
            }),
            icon: const Icon(Icons.search),
          )
        ],
        elevation: 3.5,
        centerTitle: true,
        title: const Text('STUDENT FLUTTER'),
      ),
      body: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.all(50),
        child: const Text(
          'Hello world',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
