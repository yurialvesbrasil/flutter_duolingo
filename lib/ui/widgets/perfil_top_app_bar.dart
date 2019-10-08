import 'package:flutter/material.dart';
import 'package:flutter_base/ui/values/styles.dart';

class PrefilTopAppBar extends StatelessWidget {
  final model;

  PrefilTopAppBar(this.model);

  @override
  Widget build(BuildContext context) {
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
                'Perfil',
                style: AppTheme.heading,
              ),
            ),
          ],
        ))),
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 2),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/icons/conf.png',
                  height: 44,
                ),
              ]),
        ),
      ],
    );
  }
}
