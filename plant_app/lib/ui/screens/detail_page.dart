import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/plants.dart';

class DetailPage extends StatefulWidget {
  final int plantId;
  const DetailPage({super.key, required this.plantId});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant> _plantList = Plant.plantList;
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Detail Page'),
      // ),
      body: Stack(
        children: [
          Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Constants.primaryColor.withOpacity(.15)),
                      child: Icon(
                        Icons.close,
                        color: Constants.primaryColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint('favourite');
                    },
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Constants.primaryColor.withOpacity(.15)),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              bool isFavorited = toggleIsFavorated(
                                  _plantList[widget.plantId].isFavorated);
                              _plantList[widget.plantId].isFavorated =
                                  isFavorited;
                            });
                          },
                          icon: Icon(
                            _plantList[widget.plantId].isFavorated == true
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Constants.primaryColor,
                          ),
                        )),
                  )
                ],
              )),
          Positioned(
              top: 100,
              left: 20,
              right: 20,
              child: Container(
                width: size.width * .8,
                height: size.height * .5,
                padding: EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        left: 0,
                        child: SizedBox(
                          height: 300,
                          child:
                              Image.asset(_plantList[widget.plantId].imageURL),
                        )),
                    Positioned(
                        top: 10,
                        right: 0,
                        child: SizedBox(
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PlantFeature(
                                title: 'Size',
                                plantFeature: _plantList[widget.plantId].size,
                              ),
                              PlantFeature(
                                title: 'Humidity',
                                plantFeature: _plantList[widget.plantId]
                                    .humidity
                                    .toString(),
                              ),
                              PlantFeature(
                                title: 'Temperature',
                                plantFeature:
                                    _plantList[widget.plantId].temperature,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 80, left: 30, right: 30),
                height: size.height * .5,
                width: size.width,
                decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(.4),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _plantList[widget.plantId].plantName,
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              r'$' +
                                  _plantList[widget.plantId].price.toString(),
                              style: TextStyle(
                                  color: Constants.blackColor,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              _plantList[widget.plantId].rating.toString(),
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Constants.primaryColor),
                            ),
                            Icon(
                              Icons.star,
                              size: 30.0,
                              color: Constants.primaryColor,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Expanded(
                        child: Text(
                      _plantList[widget.plantId].decription,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 18,
                          color: Constants.blackColor.withOpacity(.7)),
                    )),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Constants.primaryColor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 5,
                      color: Constants.primaryColor.withOpacity(.3),
                    )
                  ]),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Constants.primaryColor.withOpacity(.3))
                  ]),
              child: const Center(
                child: Text(
                  'BUY NOW',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String plantFeature;
  final String title;

  const PlantFeature({
    super.key,
    required this.plantFeature,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Constants.blackColor),
        ),
        Text(
          plantFeature,
          style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
