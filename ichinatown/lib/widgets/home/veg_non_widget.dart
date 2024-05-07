import 'package:flutter/material.dart';

class VegNonWidget extends StatefulWidget {
  final void Function(bool) onVegTap;
  final void Function(bool) onNonVegTap;

  VegNonWidget({
    Key? key,
    required this.onVegTap,
    required this.onNonVegTap,
  }) : super(key: key);

  @override
  _VegNonWidgetState createState() => _VegNonWidgetState();
}

class _VegNonWidgetState extends State<VegNonWidget> {
  bool veg = false;
  bool nonveg = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  veg = true;
                  nonveg = false;
                });
                widget.onVegTap(true);
              },
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    color: veg ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/logo/veg.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                    color: veg ? Colors.white : Colors.green,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  veg = false;
                  nonveg = true;
                });
                widget.onNonVegTap(true);
              },
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    color: nonveg ? Colors.red : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/logo/nonveg.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                    color: nonveg ? Colors.white : Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
