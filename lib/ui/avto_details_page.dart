import 'package:flutter/material.dart';
import 'package:receipe_app/models/Car.dart';

class AvtoDetailsPage extends StatelessWidget {
  AvtoDetailsPage({super.key, required this.car});

  Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.star),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            ),
          ],
          title: Text(car.model),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(car.imageUrl),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          car.cost.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("1.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          car.model,
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      color: Colors.black38,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("data data data data data data data data")),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 2),
                      height: 50,
                      color: Colors.blue,
                      child: Text(
                        "Saqlash",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 2),
                      height: 50,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Text(
                        "Qo'ng'iroq qilish",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
