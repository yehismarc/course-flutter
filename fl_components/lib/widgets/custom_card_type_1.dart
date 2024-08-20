import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Cras commodo lacus vitae justo dignissim, at porta lectus pellentesque. Nunc eu lorem turpis. Cras accumsan velit id vestibulum varius. Suspendisse maximus, eros et blandit facilisis, mi dui tristique sem, eu maximus sapien velit sed ligula. Curabitur ac massa egestas nisl fermentum accumsan ac sed justo.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('Cancel'),
                    //style: TextButton.styleFrom(primary: AppTheme.primary),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Ok'),
                    //style: ,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
