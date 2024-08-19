import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // The BuildContext represents the tree of all Widgets.

    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 7;

    return Scaffold( // The scaffold gives the basic layout
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen')),
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Número de clicks', style: fontSize30),
              Text('$counter', style: fontSize30)
            ],
          )
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
        },
      ),
    );
  }
}
