class ItemAmigo {
  String url_foto;
  String nome;
  int total_xp;

  ItemAmigo({this.url_foto, this.nome, this.total_xp});

}

var itensAmigos = [
  ItemAmigo(
    url_foto: "assets/images/eu.jpg",
    nome: "Yuri Brasil",
    total_xp: 45432,
  ),
  ItemAmigo(
    url_foto: "assets/images/guilherme.jpg",
    nome: "Luiz Guilherme",
    total_xp: 22699,
  ),
  ItemAmigo(
    url_foto: "assets/images/joice.jpg",
    nome: "Joice Miranda",
    total_xp: 11729,
  ),
  ItemAmigo(
    url_foto: "assets/images/desire.jpg",
    nome: "Désiré Galvão",
    total_xp: 6070,
  ),
];