import 'package:flutter/material.dart';
import 'package:plant_app/models/plants.dart';
import 'package:plant_app/ui/screens/widget/plant_widget.dart';

import '../../constants.dart';

class CartPage extends StatefulWidget {
  final List<Plant> addedToCartPlants;
  const CartPage({super.key, required this.addedToCartPlants});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: widget.addedToCartPlants.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset('assets/images/add-cart.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Your Cart is Empty',
                      style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    )
                  ],
                ),
              )
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                height: size.height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return PlantWidget(
                              index: index,
                              plantList: widget.addedToCartPlants);
                        },
                        itemCount: widget.addedToCartPlants.length,
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                      ),
                    ),
                    Column(
                      children: [
                        Divider(
                          thickness: 1.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Totals',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              r'$110',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Constants.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ));
  }
}
