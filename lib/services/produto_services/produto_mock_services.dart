import 'dart:async';

import 'package:credmoto/models/produto.dart';
import 'package:credmoto/services/produto_services/produto_services.dart';

class ProdutoMockServices implements ProdutoServices {
  static final List<Produto> _produtos = [
    const Produto(
      id: '01',
      nome: 'Kit Cilindro 150',
      descricao: 'Titan 150',
      codigo: 'HSO-650-000',
      marca: 'Honda',
      quantidade: 15,
      preco: 150.55,
    ),
    const Produto(
      id: '01',
      nome: 'Kit Cilindro 150',
      descricao: 'Titan 150',
      codigo: 'HSO-650-000',
      marca: 'Honda',
      quantidade: 15,
      preco: 150.55,
    ),
    const Produto(
      id: '01',
      nome: 'Kit Cilindro 150',
      descricao: 'Titan 150',
      codigo: 'HSO-650-000',
      marca: 'Honda',
      quantidade: 15,
      preco: 150.55,
    ),
    const Produto(
      id: '01',
      nome: 'Kit Cilindro 150',
      descricao: 'Titan 150',
      codigo: 'HSO-650-000',
      marca: 'Honda',
      quantidade: 15,
      preco: 150.55,
    ),
    const Produto(
      id: '01',
      nome: 'Kit Cilindro 150',
      descricao: 'Titan 150',
      codigo: 'HSO-650-000',
      marca: 'Honda',
      quantidade: 15,
      preco: 150.55,
    ),
    const Produto(
      id: '01',
      nome: 'Kit Cilindro 150',
      descricao: 'Titan 150',
      codigo: 'HSO-650-000',
      marca: 'Honda',
      quantidade: 15,
      preco: 150.55,
    ),
  ];

  @override
  Stream<List<Produto>> getProducts() {
    return _productsStream;
  }

  static final _productsStream = Stream<List<Produto>>.multi((controller) {
    controller.add(_produtos);
  });
}
