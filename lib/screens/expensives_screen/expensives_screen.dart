import 'package:flutter/material.dart';

class ExpensivesScreen extends StatelessWidget {
  const ExpensivesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
