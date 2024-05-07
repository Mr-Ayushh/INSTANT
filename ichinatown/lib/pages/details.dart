import 'package:flutter/material.dart';
import 'package:ichinatown/widgets/widget_support.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF94DCBB),
      body: Container(
        margin: EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "assets/images/logo/t1.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Veg.Mini Noodles Combo",
                      style: AppWidget.semiboldTextStyle(),
                    ),
                    Text(
                      "(Starter, Soup & Noodles)",
                      style: AppWidget.headerTextStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (a > 1) {
                        a--;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(7)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiboldTextStyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      a++;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(7)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Put Information About this Food ",
              style: AppWidget.lightTextStyle(),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.semiboldTextStyle(),
                      ),
                      Text(
                        "₹180",
                        style: AppWidget.boldTextStyle(),
                      ),
                    ],
                  ),
                  _buildSimpleAddToCartButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSimpleAddToCartButton() {
    return ElevatedButton.icon(
      onPressed: () {
        // Handle add to cart action
        // You can show a Snackbar or perform any other action here
      },
      icon: Icon(Icons.shopping_cart_outlined),
      label: Text(
        "Add To Cart",
        style: TextStyle(
            fontSize: 18.0, color: Colors.white), // Set text color to white
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
