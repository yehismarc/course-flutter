import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const ['Java','Flutter','Python','JavaScript'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        // itemBuilder: (context, index) => Text(options[index]),
        itemBuilder: (context, i) => ListTile( 
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigoAccent),
            onTap: () {
              final languages = options[i];
              print(languages);
            },
          ),
        separatorBuilder: ( _ , __) => const Divider(),
          
        

        
      )
    );
  }
}