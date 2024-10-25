import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomCaroussel extends StatelessWidget {
  const CustomCaroussel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: CarouselView(
        onTap: (index) {
          Get.toNamed('/expensives');
        },
        itemExtent: 300,
        shrinkExtent: 200,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
              child: Text('Gráfico de Lucros'),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
              child: Text('Gráfico de Despesas'),
            ),
          ),
        ],
      ),
    );
  }
}
