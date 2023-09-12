import 'package:flutter/material.dart';
import 'package:food_app_design/screen/item/components/item_card_map.dart';

class BodyAppItem extends StatelessWidget {
  const BodyAppItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: ItemCardMap(),
    );
  }
}

