import 'package:flutter/material.dart';
import 'package:flutter_app_2/components/categories.dart';
import 'package:flutter_app_2/components/item_card.dart';
import 'package:flutter_app_2/models/Product.dart';

import '../constants.dart';

class Body extends StatelessWidget {
  // const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text("Women",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) =>
                      ItemCard(product: products[index], press: () => {})),
            ),
          ),
        ]);
  }
}
