import 'package:flutter/material.dart';
import 'package:plant_app/models/plants.dart';

class FavouritePage extends StatefulWidget {
  final List<Plant> favoritePlants;
  const FavouritePage({super.key, required this.favoritePlants});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Favourite Page'),
      ),
    );
  }
}
