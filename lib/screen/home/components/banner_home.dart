import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/images/banner.jpg'),
      ),
    );
  }
}

