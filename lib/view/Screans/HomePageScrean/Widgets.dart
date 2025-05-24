import 'package:flutter/material.dart';
import 'package:itravelsai_app/view/Screans/HomePageScrean/HomePageScrean.dart';
import 'package:itravelsai_app/view/Screans/HomePageScrean/Widgets.dart';

Widget buildStayCards() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        stayCard(
          imagePath: 'assets/image/Image.jpg',
          price: '\$540',
          type: 'Entire apartment rental in Collingwood',
          title: 'A Stylish Apt, 5 min walk to Queen Victoria Market',
          rating: 4.9,
          reviews: 202,
          location: 'Collingwood VIC',
          isRare: true,
        ),
        SizedBox(width: 12),
        stayCard(
          imagePath: 'assets/image/Image.jpg',
          price: '\$540',
          type: 'Entire apartment rental in Collingwood',
          title: 'A Stylish Apt, 5 min walk to Queen Victoria Market',
          rating: 4.9,
          reviews: 202,
          location: 'Collingwood VIC',
          isRare: true,
        ),
      ],
    ),
  );
}

