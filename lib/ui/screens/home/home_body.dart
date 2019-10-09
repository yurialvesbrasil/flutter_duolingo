import 'package:flutter/material.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/screens/classificacao/classificacao.dart';
import 'package:flutter_base/ui/screens/perfil/perfil.dart';
import 'package:flutter_base/ui/values/colors.dart';
import 'package:flutter_base/ui/values/values.dart';
import 'package:flutter_base/ui/widgets/itens_list.dart';
import 'package:provider/provider.dart';

class HomeBodyView extends StatelessWidget {
  final double preferredSize;

  HomeBodyView(this.preferredSize);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2,
            color: model.page != 2 ? dividerColor : Colors.transparent,
          ),
        ),
      ),
      height: MediaQuery.of(context).size.height -
          (preferredSize +
              CUSTOM_APP_BOTTON_BAR_HEIGHT +
              CUSTOM_APP_BAR_BOTTOM_MARGIN),
      child: PageView(controller: model.controller, children: <Widget>[
        ItensList(
          itens: model.itens,
        ),
        //Pagina 2
        PerfilView(),
        //Pagina 3
        ClassificacaoView(),
        //Pagina 4
        Container(),
      ]),
    );
  }
}
