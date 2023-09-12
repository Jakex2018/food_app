import 'package:flutter/material.dart';
import 'package:food_app_design/screen/item/components/image_item.dart';
import 'package:food_app_design/screen/item/components/info_food_item_content.dart';
import 'package:food_app_design/screen/item/components/star_info_item.dart';

class ItemCardMap extends StatelessWidget {
  const ItemCardMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        SizedBox(height: 10),
        Text('Mized Pizza with beef, chilli and cheese', style: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.bold
        ),textAlign: TextAlign.center,),
        SizedBox(height: 10),
        StarInfoItem(),
        imageItem(),
        InfoFoodItemContent(),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Order' , style: TextStyle(
                     color: Colors.black38
                  ),),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.add_circle,color: Colors.black12),
                      Text('01', style:TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Icon(Icons.remove_circle,color: Colors.black12),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text('Delivery',style: TextStyle(
                     color: Colors.black38
                  ),),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('Express' , style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text('Price' , style: TextStyle(
                    color: Colors.black38
                  ),),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('\$8.99' , style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        
      ],
    );
  }
}