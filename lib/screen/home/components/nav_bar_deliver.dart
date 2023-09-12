import 'package:flutter/material.dart';

class NavBarDeliver extends StatelessWidget {
  const NavBarDeliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Deliver to',
                    style: TextStyle(
                        fontSize: 20)),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on ,color: Colors.red,),
                    Text('New York, USA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    Icon(Icons.arrow_drop_down,color: Colors.red)
                  ],
                ),
              ],
            ),
            Stack(
              children:<Widget> [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.all(5),
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Positioned(
                  left: 40,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding:const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color:Colors.white, width: 3)
                    ),
                  ),
                )
              ],
            ),
          ],
        )
      );
  }
}
