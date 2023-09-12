import 'package:flutter/material.dart';


class StarInfoItem extends StatelessWidget {
  const StarInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon(Icons.star , color:Colors.red),
        SizedBox(width: 3),
        Text('4.7', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
      ],
    );
  }
}