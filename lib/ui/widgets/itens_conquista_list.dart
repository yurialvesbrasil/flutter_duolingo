import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/item_conquista.dart';
import 'package:flutter_base/ui/values/colors.dart';
import 'package:flutter_base/ui/values/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ItensConquistaList extends StatelessWidget {
  final List<ItemConquista> _itensConquista;

  ItensConquistaList(this._itensConquista);

  Widget _buildItem(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Container(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Image.asset(
              _itensConquista[index].url_imagem,
              height: 120,
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  _itensConquista[index].titulo,
                  style: AppTheme.subHeading,
                ),
                SizedBox(height: 12.0),
                Text(
                  _itensConquista[index].texto,
                  style: AppTheme.text,
                  softWrap: true,
                ),
                _itensConquista[index].progress_atual > 0 ?
                Padding(
                  padding: EdgeInsets.fromLTRB(0,15,0,0),
                  child: new LinearPercentIndicator(
                    width: 140.0,
                    lineHeight: 20.0,
                    percent: (_itensConquista[index].progress_atual / _itensConquista[index].progress_total),
                    trailing: Text(("  "+(_itensConquista[index].progress_atual).round().toString()
                        +"/"+ (_itensConquista[index].progress_total).round().toString()) , style: AppTheme.percentual,),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: dividerColor,
                    progressColor: Colors.yellow,
                  ),
                ):Container()
              ],
            ),
          )
        ],
      )),
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
