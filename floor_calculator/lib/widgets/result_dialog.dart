import 'package:flutter/material.dart';
import 'package:floor_calculator/models/result_model.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;

  const ResultDialog(this.result);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Resultado'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text('${result.amountOfPieces} pisos'),
            subtitle: Text('Quantidade de pisos'),
          ),
          ListTile(
            title: Text('${result.amountOfFooter} pisos'),
            subtitle: Text('Quantidade de piesos para rodape'),
          ),
          ListTile(
            title: Text('${result.amountPiecesAndFooter} pisos'),
            subtitle: Text('Total de pisos'),
          ),
          Divider(),
          ListTile(
            title: Text('${result.areaWithoutFooter} m²'),
            subtitle: Text('Metragem quadrada sem rodape'),
          ),
          ListTile(
            title: Text('${result.areaWithFooter} m²'),
            subtitle: Text('Metragem quadrada com rodape'),
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          textColor: Theme.of(context).primaryColor,
          child: const Text('CONTINUAR'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
