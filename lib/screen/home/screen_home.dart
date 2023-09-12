import 'package:flutter/material.dart';
import 'package:food_app_design/screen/home/components/banner_home.dart';
import 'package:food_app_design/screen/home/components/category_card_home.dart';
import 'package:food_app_design/screen/home/components/nav_bar_deliver.dart';
import 'package:food_app_design/screen/home/components/products_card_home.dart';
import 'package:food_app_design/screen/home/components/search_box_and_button.dart';
import 'package:food_app_design/screen/home/components/title_and_button.dart';

// ignore: must_be_immutable
class ScreenHome extends StatelessWidget {

  List<Color> bgColors= [
    const Color(0xfffbdcda),
    const Color.fromARGB(255, 150, 33, 25),
    const Color.fromARGB(255, 31, 94, 145),
    const Color.fromARGB(255, 29, 179, 37),
  ];

  ScreenHome({super.key});

  List food =[
    'Burger',
    'Pizza',
    'Water',
    'Snacks'
  ];
  List food2 =[
    'Cheese_Pizza',
    'Chicken_Burger',
  ];

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const NavBarDeliver(),
            const SizedBox(height: 10),
            const SeachBoxAndButton(),
            const SizedBox(height: 30),
            const BannerHome(),
            const SizedBox(height: 10),
            const TitleAndButton(title: 'Categories', button: 'See All'),
            CategoryCardHome(food: food, bgColors: bgColors),
            const TitleAndButton(title: 'Products', button: 'See All'),
            ProductsCardHome(food2: food2),
          ],
        ),
      ),
    );
  }
}