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
              padding: EdgeInsets.all(16),
              child: CircleAvatar(
                radius: 46,
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
              padding: EdgeInsets.fromLTRB(70, 82, 0, 0),
              child: CircleAvatar(
                radius: 12,
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
