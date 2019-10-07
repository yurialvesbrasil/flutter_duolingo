import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/screens/perfil/perfil.dart';
import 'package:flutter_base/ui/values/values.dart';
import 'package:flutter_base/ui/widgets/botton_app_bar.dart';
import 'package:flutter_base/ui/widgets/itens_list.dart';
import 'package:flutter_base/ui/widgets/top_app_bar.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    final appBar = buildAppBar();

    return Scaffold(
        appBar: appBar,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 4,
                      color: model.page != 2
                          ? Colors.grey[200]
                          : Colors.transparent,
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height -
                    (appBar.preferredSize.height +
                        CUSTOM_APP_BOTTON_BAR_HEIGHT +
                        CUSTOM_APP_BAR_BOTTOM_MARGIN),
                child:
                    PageView(controller: model.controller, children: <Widget>[
                  ItensList(
                    itens: model.itens,
                  ),
                  //Pagina 2
                  PerfilView(),
                  //Pagina 3
                  Container(),
                  //Pagina 4
                  Container(),
                ]),
              ),
            ),
            CustomBottonAppBar(),
          ],
        ));
  }
}
