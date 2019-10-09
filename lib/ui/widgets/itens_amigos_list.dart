import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/item_amigo.dart';
import 'package:flutter_base/ui/values/styles.dart';

class ItensAmigosList extends StatelessWidget {
  final List<ItemAmigo> _itensAmigosList;

  ItensAmigosList(this._itensAmigosList);

  Widget _buildItem(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Container(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                _itensAmigosList[index].url_foto,
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(_itensAmigosList[index].nome, style: AppTheme.nomeAmigo, overflow: TextOverflow.ellipsis, maxLines: 1,),
          ),
          SizedBox(width: 8.0),
          Text(_itensAmigosList[index].total_xp.toString() + "XP", style: AppTheme.itemXp,),
          SizedBox(width: 8.0),
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: _itensAmigosList.length,
    );
  }
}
