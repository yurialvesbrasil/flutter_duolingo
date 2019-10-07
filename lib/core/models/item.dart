import 'sub_item.dart';

class Item {
  int id;
  int fase;
  List<SubItem> subitens;

  Item({this.id, this.fase, this.subitens});
}

var itensModel = [
  Item(
    id: 1,
    fase: 1,
    subitens: [
      SubItem(
          titulo: "Posses",
          url_icone: "assets/icons/itens/posses.png",
          progress: 0,
          nivel: 1),
      SubItem(
          titulo: "Histór. 4",
          url_icone: "assets/icons/itens/histor.png",
          progress: 0.2,
          nivel: 1)
    ],
  ),
  Item(
    id: 2,
    fase: 1,
    subitens: [
      SubItem(
          titulo: "Escola 2",
          url_icone: "assets/icons/itens/escola.png",
          progress: 0,
          nivel: 1),
      SubItem(
          titulo: "Planos 3",
          url_icone: "assets/icons/itens/planos.png",
          progress: 0.6,
          nivel: 1)
    ],
  ),
  Item(
    id: 3,
    fase: 1,
    subitens: [
      SubItem(
          titulo: "Café/Manhã",
          url_icone: "assets/icons/itens/cafe_manha.png",
          progress: 0.3,
          nivel: 1)
    ],
  ),
  Item(
    id: 4,
    fase: 1,
    subitens: [],
  ),
  Item(
    id: 5,
    fase: 2,
    subitens: [
      SubItem(
          titulo: "Café/Manhã",
          url_icone: "assets/icons/itens/cafe_manha.png",
          progress: 0.3,
          nivel: 1)
    ],
  ),
  Item(
    id: 6,
    fase: 2,
    subitens: [
      SubItem(
          titulo: "Posses",
          url_icone: "assets/icons/itens/posses.png",
          progress: 0,
          nivel: 1),
      SubItem(
          titulo: "Histór. 4",
          url_icone: "assets/icons/itens/histor.png",
          progress: 0.2,
          nivel: 1)
    ],
  ),
  Item(
    id: 7,
    fase: 2,
    subitens: [
      SubItem(
          titulo: "Escola 2",
          url_icone: "assets/icons/itens/escola.png",
          progress: 0,
          nivel: 1),
      SubItem(
          titulo: "Planos 3",
          url_icone: "assets/icons/itens/planos.png",
          progress: 0.6,
          nivel: 1),
      SubItem(
          titulo: "Escola 2",
          url_icone: "assets/icons/itens/escola.png",
          progress: 0,
          nivel: 1),
    ],
  ),
  Item(
    id: 8,
    fase: 2,
    subitens: [
      SubItem(
          titulo: "Café/Manhã",
          url_icone: "assets/icons/itens/cafe_manha.png",
          progress: 0.3,
          nivel: 1)
    ],
  ),
];
