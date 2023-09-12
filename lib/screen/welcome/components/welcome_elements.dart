import 'package:flutter/material.dart';
import 'package:food_app_design/screen/home/screen_home.dart';
import 'package:food_app_design/screen/welcome/components/bottom_nav_bar_button.dart';

class WelcomeElemente extends StatelessWidget {
  const WelcomeElemente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Image.asset('assets/images/boy.png'),
        const Text(
          'Order Your Food Now!',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 2),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Order food get delivery witbing a few\n minutes to your door',
            style: TextStyle(
              color: Colors.black12,
              fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 80),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  ScreenHome()));
          },
          child: const BottomNavBarButton(nameButtom: 'Get Started',),
        )
      ],
    );
  }
}

