import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {

    showDialog(
      barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)
            ),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')
              )
            ],
          );
        }
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
             child: const Padding(
               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
               child: Text('Mostrar alerta', style: TextStyle(fontSize: 16, color: Colors.white)),
             ),
             onPressed: () => displayDialog(context),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}