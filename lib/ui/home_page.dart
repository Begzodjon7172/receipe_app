import 'package:flutter/material.dart';
import 'package:receipe_app/models/Receipe.dart';
import 'package:receipe_app/ui/details_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Receipe> receipeList = [
    Receipe(title: "Hamburger", imageUrl: "assets/images/zina.jpg", cost: 21000),
    Receipe(title: "Salad", imageUrl: "assets/images/zina.jpg", cost: 21000),
    Receipe(title: "Chizburger", imageUrl: "assets/images/zina.jpg", cost: 21000),
    Receipe(title: "Hot dog", imageUrl: "assets/images/zina.jpg", cost: 21000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Receipe calculator",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: [
          myCard(receipeList[0], context),
          myCard(receipeList[1], context),
          myCard(receipeList[2], context),
          myCard(receipeList[3], context),
        ],
      ),
    );
  }

  Widget myCard(Receipe receipe, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(receipe: receipe,),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 20.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Image.asset(receipe.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                receipe.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
