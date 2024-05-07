import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ichinatown/pages/orders.dart';
import 'package:ichinatown/pages/home.dart';
import 'package:ichinatown/pages/profile.dart';
import 'package:ichinatown/pages/wallet.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  late ValueNotifier<int> _selectedIndexNotifier;
  static const List<Widget> _pages = <Widget>[
    Home(),
    Orders(),
    Wallet(),
    Profile(),
  ];

  @override
  void initState() {
    _selectedIndexNotifier = ValueNotifier<int>(0);
    super.initState();
  }

  @override
  void dispose() {
    _selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _selectedIndexNotifier,
        builder: (context, selectedIndex, _) {
          return _pages[selectedIndex];
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.transparent,
        color: Color(0xFFF63939),
        buttonBackgroundColor: Color(0xFFF63939),
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeInOut,
        index: _selectedIndexNotifier.value,
        onTap: (index) {
          _selectedIndexNotifier.value = index;
        },
        items: <Widget>[
          _buildNavItem(Icons.home_outlined, 'Home'),
          _buildNavItem(Icons.shopping_bag_outlined, 'Orders'),
          _buildNavItem(Icons.wallet_outlined, 'Wallet'),
          _buildNavItem(Icons.person_outlined, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
