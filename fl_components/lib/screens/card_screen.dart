import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w'
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://s3-us-west-2.amazonaws.com/artifactuprising/magento/blog/articles/2015-07-20-landscape-photo-tips/2015-07-20-landscape-photo-tips-08.jpg'
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Un hermoso paisaje',
            imageUrl: 'https://images.squarespace-cdn.com/content/v1/5893534986e6c00851e56dbb/d416528b-94b0-472b-b6d5-47858db91cf1/Many+Glacier+Rocks+%26+Reflection+KRP-001.jpg'
          ),
          SizedBox(height: 100),

        ],
      )
    );
  }
}