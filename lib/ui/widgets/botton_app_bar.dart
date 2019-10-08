import 'package:flutter/material.dart';
import 'package:flutter_base/ui/values/colors.dart';
import 'package:flutter_base/ui/values/values.dart';

import 'image_footer.dart';

class CustomBottonAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: CUSTOM_APP_BOTTON_BAR_HEIGHT,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: CUSTOM_DIVIDER_HEIGHT,
              color: dividerColor,
            ),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ImageFooter(0, 'assets/icons/bolinha.png',
                    'assets/icons/bolinha_cinza.png'),
                ImageFooter(1, 'assets/icons/menininha.png',
                    'assets/icons/menininha_cinza.png'),
                ImageFooter(2, 'assets/icons/escudo.png',
                    'assets/icons/escudo_cinza.png'),
                ImageFooter(
                    3, 'assets/icons/casa.png', 'assets/icons/casa_cinza.png'),
              ],
            )),
      ),
    );
  }
}
