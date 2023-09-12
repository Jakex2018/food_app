import 'package:flutter/material.dart';
import 'package:food_app_design/screen/item/screen_items.dart';
class ProductsCardHome extends StatelessWidget {
  const ProductsCardHome({
    super.key,
    required this.food2,
  });

  final List food2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        itemCount: food2.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ScreenItems();
              },));
            },
            child: Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [BoxShadow(
                  color: Colors.black12,
                  blurRadius: 50,
                  spreadRadius: 4
                ),],
              ),
              width: MediaQuery.of(context).size.width /1.4,
              margin:const EdgeInsets.only(top:5,left: 15,right:5 ,bottom:5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/${food2[index]}.jpg', 
                      height: 120,
                      width: MediaQuery.of(context).size.width / 1.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${food2[index]}',style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                          const SizedBox(height: 10),
                          const Text('Fast Food',style: TextStyle(
                            color: Colors.black12,
                            fontSize: 17
                          ),),
                          const SizedBox(height: 2),
                          const Row(
                            children:  [
                              Icon(Icons.star , color: Colors.red),
                              SizedBox(width: 3),
                              Text('4.7', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 5),
                              Text('(941 Ratings)', style: TextStyle(
                                color: Colors.black12
                              ),)
                            ],
                          )
                      ],),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.location_on ,color: Colors.red,size:20),
                                SizedBox(width: 3),
                                Text('1 KM' ,style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              color:Colors.red,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10)
                              ),
                            ),
                            child: const Text(
                              '\$15.89',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            ),
                          )
                        ],
                      )
                    ],),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}