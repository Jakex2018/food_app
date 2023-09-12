import 'package:flutter/material.dart';

class CategoryCardHome extends StatelessWidget {
  const CategoryCardHome({
    super.key,
    required this.food,
    required this.bgColors,
  });

  final List food;
  final List<Color> bgColors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: food.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            margin:const EdgeInsets.only(left: 15 ),
            padding:const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: bgColors[index],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/${food[index]}.png', height: 80 , width: 80),
                Text('${food[index]}',style: const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),)
              ],
            ),
          );
      },
      ),
    );
  }
}

