import 'package:flutter/material.dart';
import 'package:studentflutter/variables/globals.dart' as globals;

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const  Color(globals.appBarBackgroundColor),
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
        title: Text(globals.title[1]),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: const Text('رجوع'),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
