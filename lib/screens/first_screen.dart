import 'package:flutter/material.dart';
import 'package:studentflutter/variables/globals.dart' as globals;
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(globals.appBarBackgroundColor),
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
        title: Text(globals.title[0]),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('دخول'),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
