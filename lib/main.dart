import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Our Products'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            buildProductCard(
              image: 'images/apple.jpg',
              name: 'Apple',
              description: 'Description of apple fruit',
              price: '\$10',
            ),
            buildProductCard(
              image: 'images/banana.jpg',
              name: 'Banana',
              description: 'Description of banana fruit',
              price: '\$25',
            ),
            buildProductCard(
              image: 'images/pomegranate.jpg',
              name: 'Pomegranate',
              description: 'Description of pomegranate fruit',
              price: '\$30',
            ),
            buildProductCard(
              image: 'images/orange.jpg',
              name: 'Orange',
              description: 'Description of orange fruit',
              price: '\$32',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard({
    required String image,
    required String name,
    required String description,
    required String price,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      elevation: 4.0, // Shadow effect
      child: Row(
        children: [
          Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.0),
                bottomLeft: Radius.circular(0.0),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
