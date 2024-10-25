import 'package:credmoto/screens/accounts_screen/accounts_screen.dart';
import 'package:credmoto/screens/auth_screen/auth_screen.dart';
import 'package:credmoto/screens/expensives_screen/expensives_screen.dart';
import 'package:credmoto/screens/home_screen/home_screen.dart';
import 'package:credmoto/screens/stock_screen/stock_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:credmoto/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Credmoto',
      theme: theme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const AuthScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/stock',
          page: () => const StockScreen(),
        ),
        GetPage(
          name: '/accounts',
          page: () => const AccountsScreen(),
        ),
        GetPage(
          name: '/expensives',
          page: () => const ExpensivesScreen(),
        ),
      ],
    );
  }
}
