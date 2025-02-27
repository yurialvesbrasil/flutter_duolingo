import 'package:flutter/material.dart';
import 'package:flutter_base/core/enums/view_state.dart';
import 'package:flutter_base/core/models/item.dart';
import 'package:flutter_base/core/models/item_amigo.dart';
import 'package:flutter_base/core/models/item_conquista.dart';

import 'base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  PageController _controller = PageController();
  PageController get controller => _controller;

  int _page = 0;
  int get page => _page;

  int _tabPage = 0;
  int get tabPage => _tabPage;

  int _subTabPage = 0;
  int get subTabPage => _subTabPage;

  List<Item> get itens => itensModel;
  List<ItemConquista> get itensConq => itensConquista;
  List<ItemAmigo> get itemAmigoVM => itensAmigos;

  bool _clickDown = false;
  bool get clickDown => _clickDown;
  String get url_float_button => "assets/icons/float_button.png";
  String get url_float_button_click =>  "assets/icons/float_button_click.png";

  HomeViewModel() {
    _controller.addListener(() {
      if (_controller.page == 0.0)
        _page = 0;
      else if (_controller.page == 1.0)
        _page = 1;
      else if (_controller.page == 2.0)
        _page = 2;
      else if (_controller.page == 3.0) _page = 3;

      setState(ViewState.IDLE);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> setPage(int page_number) async {
    await _controller.animateToPage(page_number,
        duration: Duration(milliseconds: 200), curve: Curves.ease);
  }

  void setSubTabPage(int subTabNumber) {
    _subTabPage = subTabNumber;
    setState(ViewState.IDLE);
  }

  void setTabPage(int tabNumber) {
    _tabPage = tabNumber;
    setState(ViewState.IDLE);
  }

  void setClickDown() {
    _clickDown = true;
    setState(ViewState.IDLE);
  }

  void setClickUp() {
    _clickDown = false;
    setState(ViewState.IDLE);
  }
}
