import 'package:flutter/material.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/values/styles.dart';
import 'package:flutter_base/ui/widgets/divider.dart';
import 'package:flutter_base/ui/widgets/itens_amigos_list.dart';
import 'package:provider/provider.dart';

class ClassificacaoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/divisao_ouro.png"),
            SizedBox(
              height: 12,
            ),
            Text(
              "Divisão Ouro",
              style: AppTheme.TotalXpItem,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Os 10 primeiros avançam para a próxima divisão.",
              style: AppTheme.subHeadingDivi,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "4d 9h 31min",
              style: AppTheme.subSubHeadingDivi,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            TabDivider(false, MediaQuery.of(context).size.width),
            Expanded(
              child: ItensAmigosList(model.itemAmigoVM),
            ),
          ],
        )));
  }
}
