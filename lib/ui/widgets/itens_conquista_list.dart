import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/item_conquista.dart';
import 'package:flutter_base/ui/values/styles.dart';

class ItensConquistaList extends StatelessWidget {
  final List<ItemConquista> _itensConquista;

  ItensConquistaList(this._itensConquista);

  Widget _buildItem(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Container(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Image.asset(
                _itensConquista[index].url_imagem,
                height: 120,
              ),
            ),
            Positioned(
              left: 128,
              child: Text(
                _itensConquista[index].titulo,
                style: AppTheme.subHeading,
              ),
            ),
            Positioned(
              left: 128,
              top: 30,
              child: Text(
                _itensConquista[index].texto,
                style: AppTheme.text,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: _itensConquista.length,
    );
  }
}
