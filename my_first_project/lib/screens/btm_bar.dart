import 'package:flutter/material.dart';
import 'package:my_first_project/screens/home_screen.dart';
import 'package:my_first_project/screens/user.dart';
import 'package:my_first_project/screens/categories.dart';
import 'package:my_first_project/screens/cart.dart';


class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final List _pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const UserScreen(),
    const CartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[1],
    );
  }
}