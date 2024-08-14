import 'package:flutter/material.dart';
import 'package:receipe_app/models/Receipe.dart';

class DetailsPage extends StatelessWidget {
   DetailsPage({super.key, required this.receipe});

  Receipe receipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        title: Text(
          receipe.title,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Image.asset(receipe.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                receipe.cost.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
    );
  }
}