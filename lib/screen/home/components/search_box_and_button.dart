import 'package:flutter/material.dart';

class SeachBoxAndButton extends StatelessWidget {
  const SeachBoxAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.4,
          padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0xfff3f3f3),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search your food here...',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12)
            ),
            child: const Icon(
              Icons.filter_list,
              color: Colors.white,
              size:18
            ),
          ),
        )
      ],
    );
  }
}

