import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/ui/widgets/botton_app_bar.dart';
import 'package:flutter_base/ui/widgets/top_app_bar.dart';

import 'home_body.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
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
              child: HomeBodyView(appBar.preferredSize.height),
            ),
            CustomBottonAppBar(),
          ],
        ));
  }
}
