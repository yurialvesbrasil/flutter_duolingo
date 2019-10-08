import 'package:flutter/material.dart';
import 'package:flutter_base/core/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class ImageFooter extends StatelessWidget {
  final int page;
  final String imge_habilitada;
  final String imge_desabilitada;

  ImageFooter(this.page, this.imge_habilitada, this.imge_desabilitada);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);

    return GestureDetector(
        onTap: () {
          model.setPage(page);
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                model.page == page ? imge_habilitada : imge_desabilitada,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: null /* add child content here */,
        ));
  }
}
