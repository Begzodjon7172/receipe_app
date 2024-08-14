import 'package:flutter/material.dart';
import 'package:receipe_app/models/Car.dart';
import 'package:receipe_app/ui/avto_details_page.dart';
import 'package:receipe_app/ui/details_page.dart';

class AvtoElon extends StatelessWidget {
  AvtoElon({super.key});

  List<Car> cars = [
    Car(
        model: "Gentra",
        color: "White",
        cost: 17000,
        maxSpeed: 220,
        imageUrl: "assets/images/gentra.jpg"),
    Car(
        model: "Malibu",
        color: "Black",
        cost: 32000,
        maxSpeed: 250,
        imageUrl: "assets/images/gentra.jpg"),
    Car(
        model: "Spark",
        color: "White",
        cost: 6000,
        maxSpeed: 220,
        imageUrl: "assets/images/gentra.jpg"),
    Car(
        model: "Cobalt",
        color: "White",
        cost: 10000,
        maxSpeed: 220,
        imageUrl: "assets/images/gentra.jpg"),
    Car(
        model: "Lacetti",
        color: "White",
        cost: 9000,
        maxSpeed: 220,
        imageUrl: "assets/images/gentra.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Avtoelon",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.money),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
        leading: Badge(
          largeSize: 30,
          label: Text("5"),
          alignment: Alignment.topRight,
          child: IconButton(
            iconSize: 35,
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: ListView(
        children: [
          myModel(cars[0], context),
          myModel(cars[1], context),
          myModel(cars[2], context),
          myModel(cars[3], context),
          myModel(cars[4], context),
          myModel(cars[0], context),
          myModel(cars[1], context),
          myModel(cars[2], context),
          myModel(cars[3], context),
          myModel(cars[4], context),
        ],
      ),
    );
  }

  Widget myModel(Car car, BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AvtoDetailsPage(
                  car: car,
                ),
              ),
            );
          },
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 180,
                child: Image.asset(car.imageUrl),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Model : ${car.model}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Color : ${car.color}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Cost : ${car.cost.toString()} \$",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Max speed : ${car.maxSpeed.toString()}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Colors.black38,
          margin: EdgeInsets.all(5),
        )
      ],
    );
  }
}
