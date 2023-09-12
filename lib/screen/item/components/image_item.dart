import 'package:flutter/material.dart';

// ignore: camel_case_types
class imageItem extends StatelessWidget {
  const imageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Image.asset('assets/images/Pizza.png'),
    );
  }
}
