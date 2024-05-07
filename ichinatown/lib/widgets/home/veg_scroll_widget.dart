import 'package:flutter/material.dart';
import '../../pages/details.dart';

class VegScrollWidget extends StatelessWidget {
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
              _buildVegItem("assets/images/logo/veg.png", "Roti"),
              SizedBox(width: 10),
              _buildVegItem("assets/images/logo/veg.png", "MainCourse Rice"),
              SizedBox(width: 10),
              _buildVegItem("assets/images/logo/veg.png", "MainCourse Noodles"),
              SizedBox(width: 10),
              _buildVegItem(
                  "assets/images/logo/veg.png", "Indian Rice/Biryani"),
              SizedBox(width: 10),
              _buildVegItem("assets/images/logo/veg.png", "Indian Gravy Stuff"),
              SizedBox(width: 10),
              _buildVegItem("assets/images/logo/veg.png", "Starters"),
              SizedBox(width: 10),
              _buildVegItem("assets/images/logo/veg.png", "Soup"),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVegItem(String image, String title) {
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

class VegText extends StatelessWidget {
  const VegText({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 3,
            ),
          ),
          SizedBox(width: 10),
          Text(
            "VEG",
            style: TextStyle(
              color: Colors.green,
              fontSize: 25, // Adjust font size
              fontWeight: FontWeight.bold, // Apply bold font weight
              fontStyle: FontStyle.italic, // Apply italic style
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(1), // Apply shadow color
                  blurRadius: 2, // Adjust shadow blur radius
                  offset: Offset(1, 1), // Adjust shadow offset
                ),
              ],
              letterSpacing: 1.5, // Adjust letter spacing
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
