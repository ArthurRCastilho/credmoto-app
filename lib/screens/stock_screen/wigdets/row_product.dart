import 'package:credmoto/models/produto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowProduct extends StatelessWidget {
  final Produto produto;
  const RowProduct({
    super.key,
    required this.produto,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed('/product-screen', arguments: produto),
      child: ListTile(
        leading: Text(
          produto.quantidade.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            produto.nome,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(produto.descricao),
        ),
        trailing: Text('R\$ ${produto.preco}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
