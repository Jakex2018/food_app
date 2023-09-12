import 'package:flutter/material.dart';

class InfoFoodItem extends StatelessWidget {
  const InfoFoodItem( {
    super.key, required this.namesubItem, required this.numbersubItem,
  });

  final String namesubItem, numbersubItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(namesubItem , style: const TextStyle(
          color: Colors.black38
        ),),
        const SizedBox(height: 20),
        Text(
          numbersubItem,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        )
      ],
    );
  }
}
