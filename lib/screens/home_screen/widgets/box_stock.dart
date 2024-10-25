import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BoxStock extends StatelessWidget {
  const BoxStock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/stock');
      },
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.grey[400],
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.inventory, size: 45),
            Text(
              'Estoque',
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
