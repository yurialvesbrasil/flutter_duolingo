import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/item_conquista.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/values/styles.dart';
import 'package:flutter_base/ui/values/values.dart';
import 'package:flutter_base/ui/widgets/divider.dart';
import 'package:flutter_base/ui/widgets/itens_conquista_list.dart';
import 'package:provider/provider.dart';

class PerfilView extends StatefulWidget {
  @override
  _PerfilViewState createState() => _PerfilViewState();
}

class _PerfilViewState extends State<PerfilView>
    with SingleTickerProviderStateMixin {
  TabController _tabControler;

  final List<Tab> _myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  void initState() {
    super.initState();
    _tabControler = TabController(vsync: this, length: _myTabs.length);
  }

  @override
  void dispose() {
    _tabControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    List<ItemConquista> _itensConquista = model.itensConq;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: CircleAvatar(
                    radius: 44,
                    backgroundImage: AssetImage(
                      "assets/images/eu.jpg",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(70, 82, 2, 2),
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/icons/edit_icon.png",
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          "Yuri Brasil",
          style: AppTheme.subHeading,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width,
          height: CUSTOM_TAB_BAR_HEIGHT,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "CONQUISTAS",
                    style: AppTheme.tabTitleEnable,
                  ),
                  TabDivider(true),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "AMIGOS",
                    style: AppTheme.tabTitleDisable,
                  ),
                  TabDivider(false),
                ],
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 295,
          padding: EdgeInsets.all(8),
          child: ItensConquistaList(_itensConquista),
        ),
      ],
    );
  }
}
