import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/item.dart';
import 'package:flutter_base/ui/widgets/sub_itens.dart';

class ItensList extends StatelessWidget {
  final List<Item> itens;

  const ItensList({Key key, this.itens}) : super(key: key);

  Widget _buildItem(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Container(
        height: (itens[index].subitens.length > 0) ? 145 : 90,
        width: MediaQuery.of(context).size.width,
        child: Align(
          alignment: Alignment.center,
          child: SubItemList(
            subitens: itens[index].subitens,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("numeor de itens: " + itens.length.toString());
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: itens.length,
    );
  }
}
