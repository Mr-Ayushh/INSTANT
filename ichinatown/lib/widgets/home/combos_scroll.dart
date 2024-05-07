import 'package:flutter/material.dart';
import '../../pages/details.dart';

class LunchScrollHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        height: 150,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildComboItem(
                  "assets/images/logo/t1.png", "Veg.Mini Noodles Combo"),
              SizedBox(width: 10),
              _buildComboItem(
                  "assets/images/logo/veg.png", "Veg.Mini Rice Combo"),
              SizedBox(width: 10),
              _buildComboItem(
                  "assets/images/logo/veg.png", "Veg. Paneer Kabsa Rice"),
              SizedBox(width: 10),
              _buildComboItem(
                  "assets/images/logo/nonveg.png", "Chicken Mini Rice Combo"),
              SizedBox(width: 10),
              _buildComboItem("assets/images/logo/nonveg.png",
                  "Chicken Mini Noodles Combo"),
              SizedBox(width: 10),
              _buildComboItem(
                  "assets/images/logo/nonveg.png", "Chicken Paneer Kabsa Rice"),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComboItem(String image, String title) {
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

class ComboText extends StatelessWidget {
  const ComboText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 10), // Added vertical padding
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
            "COMBOS",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 25, // Adjust font size
              fontWeight: FontWeight.bold, // Apply bold font weight
              fontStyle: FontStyle.italic,
              // Apply italic style
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
        ],
      ),
    );
  }
}
