import 'package:flutter/material.dart';

class RowHeader extends StatelessWidget {
  const RowHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Qtd', textAlign: TextAlign.center),
          Expanded(
            child: Text(
              'Nome do Produto',
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'Valor',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
