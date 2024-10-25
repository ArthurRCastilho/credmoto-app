import 'package:credmoto/screens/home_screen/widgets/box_accounts.dart';
import 'package:credmoto/screens/home_screen/widgets/box_stock.dart';
import 'package:credmoto/screens/home_screen/widgets/custom_caroussel.dart';
import 'package:credmoto/screens/home_screen/widgets/text_app_bar_custom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextAppBarCustom(),
      ),
      body: const Column(
        children: [
          CustomCaroussel(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoxStock(),
                    SizedBox(width: 20),
                    BoxAccounts(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
