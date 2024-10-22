import 'package:flutter/material.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/values/styles.dart';
import 'package:flutter_base/ui/values/values.dart';
import 'package:flutter_base/ui/widgets/perfil_top_app_bar.dart';
import 'package:provider/provider.dart';

class buildAppBar extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    switch (model.page) {
      case 0:
        return AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Image.asset('assets/icons/bandeira.png'),
          ),
          actions: <Widget>[
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 85, right: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/coroa.png',
                          height: 30,
                        ),
                        Text(
                          "216",
                          style: AppTheme.coroa,
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, top: 2),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/foguinho.png',
                          height: 30,
                        ),
                        Text(
                          "3",
                          style: AppTheme.foguinho,
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, top: 2),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/pedra.png',
                          height: 30,
                        ),
                        Text(
                          "588",
                          style: AppTheme.pedra,
                        )
                      ]),
                ),
              ],
            )),
          ],
        );
      case 1:
        return PrefilTopAppBar(model);
      case 2:
        return AppBar(
          elevation: 0,
          actions: <Widget>[
            Expanded(
              child: Container(),
            )
          ],
        );
      case 3:
        return AppBar(
          elevation: 0,
          actions: <Widget>[
            Expanded(
                child: Container(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 6, left: 62),
                  child: Text(
                    'Loja',
                    style: AppTheme.heading,
                  ),
                ),
              ],
            ))),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 2),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/pedra.png',
                      height: 30,
                    ),
                    Text(
                      "588",
                      style: AppTheme.pedra,
                    )
                  ]),
            ),
          ],
        );
    }
  }

  @override
  // TODO: implement child
  Widget get child => null;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(CUSTOM_APP_BAR_HEIGHT);
}
