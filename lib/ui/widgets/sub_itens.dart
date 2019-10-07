import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/sub_item.dart';
import 'package:flutter_base/ui/values/colors.dart';
import 'package:flutter_base/ui/values/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SubItemList extends StatelessWidget {
  final List<SubItem> subitens;

  const SubItemList({Key key, this.subitens}) : super(key: key);

  Widget _buildSubItem(BuildContext context, int index) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 4, 4, 0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 115,
                  child: CircularPercentIndicator(
                    radius: 110.0,
                    lineWidth: 8.0,
                    percent: subitens[index].progress,
                    backgroundColor: Colors.grey[200],
                    progressColor: progressColorF1,
                    center: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 14, 7, 7),
                          child: Image.asset(
                            subitens[index].url_icone,
                            height: MediaQuery.of(context).size.width / 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(subitens[index].titulo, style: AppTheme.item)
              ],
            ),
            Positioned(
                bottom: 25,
                right: 0,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "assets/icons/itens/nivel.png",
                      height: 32,
                    ),
                    Positioned(
                      left: 15,
                      bottom: 3,
                      child: Text(
                        "1",
                        style: AppTheme.fase1,
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (subitens.length > 0)
          ? ListView.builder(
              shrinkWrap: true,
              itemBuilder: _buildSubItem,
              scrollDirection: Axis.horizontal,
              itemCount: subitens.length,
            )
          : Stack(children: [
              Center(
                child: Image.asset("assets/icons/itens/fase.png"),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(22, 25, 25, 0),
                  child: Text(
                    "1",
                    style: AppTheme.fase1,
                  ),
                ),
              ),
            ]),
    );
  }
}
