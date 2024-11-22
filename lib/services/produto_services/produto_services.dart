

import 'package:credmoto/models/produto.dart';
import 'package:credmoto/services/produto_services/produto_mock_services.dart';

abstract class ProdutoServices {
  Stream<List<Produto>> getProducts();

  // Factory responsável por criar uma instância de ProductMockService
  // Substituir Mock por API
  factory ProdutoServices() {
    return ProdutoMockServices();
  }
}