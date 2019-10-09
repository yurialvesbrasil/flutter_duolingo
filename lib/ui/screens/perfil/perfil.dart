
import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/item_conquista.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/values/styles.dart';
import 'package:flutter_base/ui/values/values.dart';
import 'package:flutter_base/ui/widgets/divider.dart';
import 'package:flutter_base/ui/widgets/itens_amigos_list.dart';
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
        SizedBox(
          height: 8,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: CUSTOM_TAB_BAR_HEIGHT,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () => model.setSubTabPage(0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "CONQUISTAS",
                          style: (model.subTabPage == 0)
                              ? AppTheme.tabTitleEnable
                              : AppTheme.tabTitleDisable,
                        ),
                      ),
                    ),
                    TabDivider(model.subTabPage == 0, MediaQuery.of(context).size.width/2),
                  ],
                ),
              ),
              InkWell(
                onTap: () => model.setSubTabPage(1),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "AMIGOS",
                          style: (model.subTabPage == 1)
                              ? AppTheme.tabTitleEnable
                              : AppTheme.tabTitleDisable,
                        ),
                      ),
                    ),
                    TabDivider(model.subTabPage == 1, MediaQuery.of(context).size.width/2),
                  ],
                ),
              ),
            ],
          ),
        ),
        (model.subTabPage == 0)
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 290,
                padding: EdgeInsets.all(8),
                child: ItensConquistaList(_itensConquista),
              )
            : Container(
                child: Column(

                children: <Widget>[
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Total de XP",
                        style: AppTheme.TotalXpItem,
                      ),
                      Text(
                        "ADICIONAR",
                        style: AppTheme.adicionar,
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    padding: EdgeInsets.all(8),
                    child: ItensAmigosList(model.itemAmigoVM),
                  ),
                ],
              )),
      ],
    );
  }
}
