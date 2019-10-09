import 'package:flutter/material.dart';
import 'package:flutter_base/core/models/item.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:flutter_base/ui/widgets/sub_itens.dart';
import 'package:provider/provider.dart';

class ItensList extends StatelessWidget {
  final List<Item> itens;

  const ItensList({Key key, this.itens}) : super(key: key);

  Widget _buildItem(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Container(
        height: (itens[index].subitens.length > 0) ? 145 : 90,
        width: MediaQuery.of(context).size.width,
        child: Align(
          alignment: Alignment.center,
          child: SubItemList(
            subitens: itens[index].subitens,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return Stack(
      children: <Widget>[
        ListView.builder(
          itemBuilder: _buildItem,
          itemCount: itens.length,
        ),
        Positioned(
            bottom: 12,
            right: 12,
            child: GestureDetector(
              // When the user taps the button, show a snackbar.
              onTapDown: (i) => model.setClickDown(),
              onTapUp: (i) => model.setClickUp(),
              child: Image.asset(
                model.clickDown
                    ? model.url_float_button_click
                    : model.url_float_button,
                height: 75,
              ),
            )),
      ],
    );
  }
}
