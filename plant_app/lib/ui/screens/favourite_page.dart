import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/plants.dart';
import 'package:plant_app/ui/screens/widget/plant_widget.dart';

class FavouritePage extends StatefulWidget {
  final List<Plant> favoritePlants;
  const FavouritePage({super.key, required this.favoritePlants});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: widget.favoritePlants.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset('assets/images/favorited.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Your Favorited Plants',
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
                height: size.height * .5,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return PlantWidget(
                        index: index, plantList: widget.favoritePlants);
                  },
                  itemCount: widget.favoritePlants.length,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                ),
              ));
  }
}
