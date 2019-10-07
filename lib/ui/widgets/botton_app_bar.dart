import 'package:flutter/material.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/values/values.dart';
import 'package:provider/provider.dart';

class CustomBottonAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return Positioned(
      bottom: 0,
      child: Container(
        height: CUSTOM_APP_BOTTON_BAR_HEIGHT,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 4,
              color: Colors.grey[200],
            ),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      model.setPage(0);
                    },
                    child: Image.asset(
                      model.page == 0
                          ? 'assets/icons/bolinha.png'
                          : 'assets/icons/bolinha_cinza.png',
                      height: 60,
                    )),
                GestureDetector(
                    onTap: () {
                      model.setPage(1);
                    },
                    child: Image.asset(
                      model.page == 1
                          ? 'assets/icons/menininha.png'
                          : 'assets/icons/menininha_cinza.png',
                      height: 60,
                    )),
                GestureDetector(
                    onTap: () {
                      model.setPage(2);
                    },
                    child: Image.asset(
                      model.page == 2
                          ? 'assets/icons/escudo.png'
                          : 'assets/icons/escudo_cinza.png',
                      height: 60,
                    )),
                GestureDetector(
                    onTap: () {
                      model.setPage(3);
                    },
                    child: Image.asset(
                      model.page == 3
                          ? 'assets/icons/casa.png'
                          : 'assets/icons/casa_cinza.png',
                      height: 60,
                    )),
              ],
            )),
      ),
    );
  }
}
