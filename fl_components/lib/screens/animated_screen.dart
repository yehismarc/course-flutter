import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedSreen extends StatefulWidget {
  const AnimatedSreen({super.key});

  @override
  State<AnimatedSreen> createState() => _AnimatedSreenState();
}

class _AnimatedSreenState extends State<AnimatedSreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigoAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void onChangeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1
    );
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          // color: Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: onChangeShape,
          child: const Icon(Icons.play_circle_outline, size: 35,),
      ),
    );
  }
}
