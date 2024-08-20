import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['Java','Flutter','Python','JavaScript'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map((languages) => ListTile(
              title: Text(languages),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ).toList()
        ],
      )
    );
  }
}