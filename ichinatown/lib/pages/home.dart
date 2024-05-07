import 'package:flutter/material.dart';
import 'package:ichinatown/widgets/home/drinks_scroll_widget.dart';
import 'package:ichinatown/widgets/home/combos_scroll.dart';
import 'package:ichinatown/widgets/widget_support.dart';
import '../widgets/home/nonveg_scroll.dart';
import '../widgets/home/veg_scroll_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showVeg = false;
  bool showNonVeg = false;
  bool showCombosText = true;
  bool showLunchBoxScroll = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF94DCBB),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, // Adjust the horizontal padding
                vertical: screenWidth * 0.06, // Adjust the vertical padding
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedOpacity(
                    opacity: showCombosText ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    child: Text(
                      "Hello Ayush👋🏻",
                      style: AppWidget.boldTextStyle(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        screenWidth * 0.02), // Adjust the padding
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.02), // Adjust the border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: screenWidth * 0.06, // Adjust the icon size
                    ),
                  )
                ],
              ),
            ),
            AnimatedOpacity(
              opacity: showCombosText ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wlcm,", style: AppWidget.headerTextStyle()),
                    Text("Discover & Get Delicious Food",
                        style: AppWidget.lightTextStyle()),
                    SizedBox(
                        height:
                            screenWidth * 0.03), // Adjust the sized box height
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    AnimatedOpacity(
                      opacity: showCombosText ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: ComboText(),
                    ),
                    LunchScrollHomeWidget(),
                    DrinksText(),
                    DrinksScrollWidget(),
                    VegText(),
                    VegScrollWidget(),
                    NonVegText(),
                    NonVegScrollWidget(),
                    SizedBox(
                      height: screenWidth * 0.1,
                    ), // Adjust the sized box height
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
