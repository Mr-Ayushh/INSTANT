import 'package:flutter/material.dart';
import '../../pages/details.dart';

class NonVegScrollWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Details()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        height: 150,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildNonVegItem("assets/images/logo/nonveg.png", "Tandoori"),
              SizedBox(width: 10),
              _buildNonVegItem(
                  "assets/images/logo/nonveg.png", "MainCourse Rice"),
              SizedBox(width: 10),
              _buildNonVegItem(
                  "assets/images/logo/nonveg.png", "MainCourse Noodles"),
              SizedBox(width: 10),
              _buildNonVegItem(
                  "assets/images/logo/nonveg.png", "Prawn Rice/Noodles"),
              SizedBox(width: 10),
              _buildNonVegItem(
                  "assets/images/logo/nonveg.png", "Indian Rice/Biryani"),
              SizedBox(width: 10),
              _buildNonVegItem(
                  "assets/images/logo/nonveg.png", "Indian Non-Veg"),
              SizedBox(width: 10),
              _buildNonVegItem(
                  "assets/images/logo/nonveg.png", "Chinese Seafood"),
              SizedBox(width: 10),
              _buildNonVegItem("assets/images/logo/nonveg.png", "Starters"),
              SizedBox(width: 10),
              _buildNonVegItem("assets/images/logo/nonveg.png", "Soup"),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNonVegItem(String image, String title) {
    return Container(
      width: 230,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NonVegText extends StatelessWidget {
  const NonVegText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          SizedBox(width: 10),
          Text(
            "NON-VEG",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20, // Adjust font size
              fontWeight: FontWeight.bold, // Apply bold font weight
              fontStyle: FontStyle.italic, // Apply italic style
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.5), // Apply shadow color
                  blurRadius: 2, // Adjust shadow blur radius
                  offset: Offset(1, 1), // Adjust shadow offset
                ),
              ],
              letterSpacing: 1.5, // Adjust letter spacing
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 3,
            ),
          ),
        ],
      ),
    );
  }
}
