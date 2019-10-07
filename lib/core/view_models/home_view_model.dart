import 'package:flutter/material.dart';
import 'package:flutter_base/core/enums/view_state.dart';
import 'package:flutter_base/core/models/item.dart';

import 'base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  PageController _controller = PageController();
  PageController get controller => _controller;

  int _page = 0;
  int get page => _page;

  List<Item> get itens => itensModel;

  Future<void> setCurrentPage(double page_number) async {
    _page = page_number.round();
    setState(ViewState.IDLE);
  }

  Future<void> setPage(int page_number) async {
    _page = page_number;
    _controller.animateToPage(page_number,
        duration: Duration(milliseconds: 200), curve: Curves.ease);
    setState(ViewState.IDLE);
  }
}
