import 'package:credmoto/models/produto.dart';
import 'package:credmoto/screens/stock_screen/wigdets/row_header.dart';
import 'package:credmoto/screens/stock_screen/wigdets/row_product.dart';
import 'package:credmoto/services/produto_services/produto_services.dart';
import 'package:credmoto/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class StockScreen extends StatelessWidget {
  final Stream<List<Produto>> _produtosStream = ProdutoServices().getProducts();
  StockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estoque'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SearchBarWidget(),
            const SizedBox(height: 10),
            const RowHeader(),
            const Divider(),
            StreamBuilder(
                stream: _produtosStream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('Nenhum Produto'),
                    );
                  } else {
                    List<Produto> produtos = snapshot.data!;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: produtos.length,
                        itemBuilder: (context, index) =>
                            RowProduct(produto: produtos[index]),
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
