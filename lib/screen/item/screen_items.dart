import 'package:flutter/material.dart';
import 'package:food_app_design/screen/item/components/body_app_item.dart';
import 'package:food_app_design/screen/welcome/components/bottom_nav_bar_button.dart';
class ScreenItems extends StatelessWidget {
  const ScreenItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuildItem(context),
      body: const BodyAppItem(),
      bottomNavigationBar: InkWell(
        onTap: (){},
        child: const BottomNavBarButton(nameButtom: 'Add to Cart'),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppBarBuildItem(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back, color: Colors.black,),
      ), 
      title: const Text('Chesse Pizza',style: TextStyle(
        color: Colors.black,
        fontSize: 23,
        fontWeight: FontWeight.bold
      ),),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(Icons.favorite , color: Colors.black38,),
        )
      ],      
    );
  }
}