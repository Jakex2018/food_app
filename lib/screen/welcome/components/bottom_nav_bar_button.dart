import 'package:flutter/material.dart';

class BottomNavBarButton extends StatelessWidget {
  const BottomNavBarButton({
    super.key, required this.nameButtom,
  });
  
  final String nameButtom;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 32 , vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
        
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nameButtom , style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),),
          const SizedBox(width: 12),
          const Icon(Icons.arrow_forward_ios , color: Colors.white,size: 15)
        ],
      ),
    );
  }
}