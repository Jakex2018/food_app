import 'package:flutter/material.dart';
import 'package:food_app_design/screen/item/components/info_food_item.dart';

class InfoFoodItemContent extends StatelessWidget {
  const InfoFoodItemContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children:<Widget> [
       const InfoFoodItem(namesubItem: 'Calories', numbersubItem: '120 kcal'),
       const SizedBox(width: 19),
       Container(
         width: 3,
         height: 25,
         color: Colors.black,
       ),
       const SizedBox(width: 19),
       const InfoFoodItem(namesubItem: 'Volume', numbersubItem: '120 inch',),
       const SizedBox(width: 19),
       Container(
         width: 3,
         height: 25,
         color: Colors.black,
       ),
       const SizedBox(width: 19),
       const InfoFoodItem(namesubItem: 'Distance', numbersubItem: '123 KM'),
       const SizedBox(width: 19),
     ],
    );
  }
}