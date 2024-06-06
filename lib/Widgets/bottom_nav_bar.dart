import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Screen/account_screen.dart';
import '../Screen/cart_screen.dart';
import '../Screen/category.dart';
import '../Screen/home_screen.dart';
import '../controller/bottomnavbar_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(navbarcontroller());
    var navbaritem = const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
      BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Account'),
    ];

    var navbody = const [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      AccountScreen()
    ];

    return Scaffold(
      body: Obx(() => navbody.elementAt(controller.currentNavBarIndex.value)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavBarIndex.value,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: navbaritem,
          onTap: (value) {
            controller.currentNavBarIndex.value = value;
          },
        ),
      ),
    );
  }
}
