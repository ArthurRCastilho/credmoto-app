import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BoxAccounts extends StatelessWidget {
  const BoxAccounts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/accounts');
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
            Icon(Icons.supervisor_account_rounded, size: 45),
            Text(
              'Contas',
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
