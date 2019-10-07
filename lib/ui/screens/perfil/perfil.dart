import 'package:flutter/material.dart';

class PerfilView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(18),
              child: CircleAvatar(
                radius: 55,
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
              padding: EdgeInsets.fromLTRB(90, 90, 0, 0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "assets/icons/edit_icon.png",
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
