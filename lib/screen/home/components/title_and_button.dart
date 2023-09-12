import 'package:flutter/material.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({
    super.key, required this.title, required this.button,
  });

  final String title , button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget> [
           Text(title , style:const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          TextButton(onPressed:(){}, child: Text(button,style:const TextStyle(
            color: Colors.red,
            fontSize: 15,
            fontWeight: FontWeight.bold
          )))
        ],
      ),
    );
  }
}

