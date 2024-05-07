import 'package:flutter/material.dart';

class DrinksScrollWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        height: 150,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildDrinkItem("assets/images/logo/drinks.png", "ThumsUp"),
              SizedBox(width: 10),
              _buildDrinkItem("assets/images/logo/drinks.png", "Sprite"),
              SizedBox(width: 10),
              _buildDrinkItem("assets/images/logo/drinks.png", "BudweiserCan"),
              SizedBox(width: 10),
              _buildDrinkItem("assets/images/logo/drinks.png", "Sting"),
              SizedBox(width: 10),
              _buildDrinkItem("assets/images/logo/drinks.png", "Maaza"),
              SizedBox(width: 10),
              _buildDrinkItem("assets/images/logo/drinks.png", "Water"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrinkItem(String image, String title) {
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
            Image.network(
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

class DrinksText extends StatelessWidget {
  const DrinksText({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          SizedBox(width: 10),
          Text(
            "DRINKS",
            style: TextStyle(
              color: Colors.blueAccent,
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
